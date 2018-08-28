

###  This file is for running a linear regression on tall golf data  ###

#  By Daniel Myers

###

### Libraries ####

library(plyr)
library(tidyverse)
library(lubridate)
library(rvest)
library(broom)
library(glmnet)
library(magrittr)


### Function to create sparse matrix ###

# This function is from https://gist.github.com/kotaishr/75a7912ab3e0d0af3847ee0fdec29205
# It converts a dataframe to a standard sparse matrix
data.frame.2.sparseMatrix <- function(df) {
  dtypes = lapply(df, class)
  nrows = dim(df)[1]
  ncols = dim(df)[2]
  
  for (col_idx in 1:ncols) {
    # convert target column into sparseMatrix with colname(s)
    colname = colnames(df)[col_idx]
    if(dtypes[col_idx] == 'factor'){
      col_in_sprMtx = sparse.model.matrix(as.formula(paste("~-1+", colname)), df)
    }
    else{
      col_in_sprMtx = sparseMatrix(i=1:nrows, j=rep(1, nrows), x=df[, col_idx], dims = c(nrows, 1))
      colnames(col_in_sprMtx) = c(colname)
    }
    col_in_sprMtx = drop0(col_in_sprMtx)
    
    # Add column in sparseMatrix form to the result sparseMatrix
    if(col_idx == 1){
      result = col_in_sprMtx
    }
    else{
      result = cbind(result, col_in_sprMtx)
    }
  }                             
  return(result)
}


###  Import Player Results Data ###

Player_Result_Folder <- "Data/Player_Results/"
Player_Result_File_List <- dir(Player_Result_Folder, pattern="Player_Results_.*\\.csv")
Player_Results <- Player_Result_File_List %>%
  map_dfr(~ read.csv(file.path(Player_Result_Folder,.),stringsAsFactors = FALSE)) %>%
  .[!is.na(.$Event_Date),]

Player_Results$Year <- NULL
Player_Results$Event_Date <- as.Date(Player_Results$Event_Date)

# Add Round_ID variable
Player_Results$Round_ID <-
  paste(Player_Results$Event_ID,Player_Results$Round_Num,sep = "_") %>% as.factor()
Player_Results$Player_ID %<>% as.factor()

# Identify if round is part of a Primary Tour:
Primary_Tours <-
  c("European Tour",
    "Major Championship",
    "PGA Tour", 
    "World Golf Championships",
    "Olympic Golf Competition")

Player_Results$Primary_Round <-
  pmin((3 - (as.integer(is.na((match(Player_Results$Event_Tour_1,Primary_Tours)))) +  
          as.integer(is.na((match(Player_Results$Event_Tour_2,Primary_Tours)))) + 
          as.integer(is.na((match(Player_Results$Event_Tour_3,Primary_Tours)))))),1)

# If there are multiple player_names for a given Player_ID, use most common Player_Name for all
Player_Results %<>% group_by(Player_ID) %>%
  mutate(Player_Name = names(table(Player_Name))[table(Player_Name) == max(table(Player_Name))][1]) %>% 
  ungroup() %>% as.data.frame()

glimpse(Player_Results)

### Import Event Information  ###
Tournament_Info <- read.csv("Data/Tournament_Info_RVest.csv", stringsAsFactors = FALSE) %>%
  .[!is.na(.$Event_Date),] %>%
  mutate( Event_Date = as.Date(Event_Date),
          Scrape_Date = as.Date(Scrape_Date))

# Add in the replacement of the Event_Tour designations

Tour_Remap <- read.csv("ID_Maps/Tour_ID_Map.csv", stringsAsFactors = FALSE)

Tournament_Info$Event_Tour_1 %<>% mapvalues(.,Tour_Remap$Tour_OWGR,Tour_Remap$Tour)
Tournament_Info$Event_Tour_2 %<>% mapvalues(.,Tour_Remap$Tour_OWGR,Tour_Remap$Tour)
Tournament_Info$Event_Tour_3 %<>% mapvalues(.,Tour_Remap$Tour_OWGR,Tour_Remap$Tour)



### Function to select data to use in Regression ###

Filter_Player_Results<- function(Raw_Data=Player_Results,
                                 Begin_Date="1990-01-01",
                                 End_Date="2050-01-01",
                                 Player_Min_Rounds=0,
                                 Tourn_Min_Players=0){
  
  Filtered_Results <- Raw_Data %>% filter(Event_Date>Begin_Date) %>%
    filter(Event_Date<End_Date)
  
  Filtered_Results %<>%
    semi_join(Filtered_Results %>% count(Player_ID) %>% filter (n>Player_Min_Rounds)) %>% 
    semi_join(Filtered_Results %>% count(Round_ID) %>% filter (n>Tourn_Min_Players)) %>% 
    semi_join(Filtered_Results %>% count(Player_ID) %>% filter (n>Player_Min_Rounds)) %>% 
    semi_join(Filtered_Results %>% count(Round_ID) %>% filter (n>Tourn_Min_Players)) %>%
    droplevels()
  
  str(Filtered_Results)

  return(Filtered_Results)
}


### Function to develop weighting vector from dates and exponent

Weight_Vector <- function (Source_Data, 
                           Key_Date = Sys.Date(), 
                           Weight_Weekly_Exponent = 1, 
                           Duration_Full_Weight = weeks(0)) {
  # Note: the defaults are to weight all data equally,
  # to set the "key date" to today, to have no plateau of equal weights
  # and to simply use Event_Date for all data
  
  Date_Vector <- Source_Data$Event_Date  
  Key_Date<- as.Date(Key_Date)
  
  # Duration full weight is distance from the key date
  Begin_Full_Wt <- Key_Date - Duration_Full_Weight
  End_Full_Wt <- Key_Date + Duration_Full_Weight

  Begin_Delta <- pmax(as.integer(as.Date(Begin_Full_Wt) - Date_Vector),0)
  End_Delta <- pmax(as.integer(Date_Vector - as.Date(End_Full_Wt)),0)
  
  Week_Delta <-   as.integer(round(pmax(Begin_Delta,End_Delta)) / 7)
  
  Weights <- as.data.frame(Weight_Weekly_Exponent ^ Week_Delta) %>% set_names(c("Weight"))

  return(Weights[,c("Weight")])
  
}




### Ridge Regression and Linear Regression as a function ###

LM_Regression_Ratings <- function(Source_Data, Weights_Vector, Player_Info, RegType = "Linear") {
  
  
  str(Weights_Vector)
  
  #Pull out the data that will be needed for the regression
  Variables_Sparse_Reg <- Source_Data[,c("Round_ID","Player_ID")]
  Response_Vector <- as.vector(Source_Data[,c("Score")])
  str(Variables_Sparse_Reg)
  str(Response_Vector)
  
  #Convert to sparse matrix
  Matrix_Sparse_Reg <- data.frame.2.sparseMatrix(Variables_Sparse_Reg)
  str(Matrix_Sparse_Reg)
  
  
  # Elastic Net
  # Elastic Net only keeps those variables that are clearly non-zero.
  
  # fit_elastic <- glmnet(Matrix_Sparse_Reg,Response_Vector)
  # cv_elastic <- cv.glmnet(Matrix_Sparse_Reg,Response_Vector,nfolds=10)
  # pred_elastic <- predict(fit_elastic, Matrix_Sparse_Reg,type="response", s=cv_elastic$lambda.min)
  # plot(fit_elastic)
  # plot(cv_elastic)
  # head(coef(cv_elastic, s = "lambda.min"))
  # print(cv_elastic$lambda.min)
  
  # Ridge Regression
  # Ridge regression keeps all variables, but cross validates a shrinkage
  # parameter which pushes all variables towards 0
  
  lambda_grid=10^seq(4,-10,length=100)
  str(lambda_grid)
  fit_ridge <- glmnet(Matrix_Sparse_Reg,
                      Response_Vector, 
                      weights = Weights_Vector, 
                      alpha = 0, 
                      lambda=lambda_grid)
  cv_ridge <- cv.glmnet(Matrix_Sparse_Reg,
                        Response_Vector, 
                        weights = Weights_Vector, 
                        nfolds=10, 
                        alpha = 0, 
                        lambda=lambda_grid)
  pred_ridge <- predict(fit_ridge, 
                        Matrix_Sparse_Reg,
                        type="response", 
                        s=cv_ridge$lambda.min)
  Ridge_Results <- tidy(coef(cv_ridge, s = "lambda.min"))
  plot(cv_ridge)
  print(cv_ridge$lambda.min)
  
  # The minimum lambda is basically standard linear regression:
  LM_Results <- tidy(coef(cv_ridge, s = min(lambda_grid)))
  
  qplot(Ridge_Results$value[-1],LM_Results$value[-1])
  
  max(Ridge_Results$value)
  max(LM_Results$value)
  min(Ridge_Results$value)
  min(LM_Results$value)
  
  # Split Results Out
  Ridge_Intercept <- Ridge_Results$value[1]
  Ridge_Rounds <- Ridge_Results[grep("Round",Ridge_Results$row),] %>% 
    mutate(Round_ID = as.factor(gsub("^.*ID","",row))) %>%
    select(.,Round_ID, Round_Value = value) 
  Ridge_Players <- Ridge_Results[grep("Player",Ridge_Results$row),] %>% 
    mutate(Player_ID = as.factor(gsub("^.*ID","",row))) %>%
    select(.,Player_ID, Player_Value = value) 
  
  
  Ridge_Results <- list(Ridge_Intercept,Ridge_Rounds,Ridge_Players)
  
  # Split Results Out
  LM_Intercept <- LM_Results$value[1]
  LM_Rounds <- LM_Results[grep("Round",LM_Results$row),] %>% 
    mutate(Round_ID = as.factor(gsub("^.*ID","",row))) %>%
    select(.,Round_ID, Round_Value = value) %>%
    mutate(Event_ID = gsub("_.*","",Round_ID)) %>%
    merge(.,Tournament_Info) %T>% glimpse()
  LM_Players <- LM_Results[grep("Player",LM_Results$row),] %>% 
    mutate(Player_ID = as.factor(gsub("^.*ID","",row))) %>%
    select(.,Player_ID, Player_Value = value) %>%
    merge(.,Player_Info, by = "Player_ID") %T>% glimpse()
  
  Avg_Primary_Rating <- mean(LM_Players$Player_Value[LM_Players$Primary_Player_Yr==1]) %T>% print()
  
  LM_Players %<>% mutate(Player_Value = Player_Value - Avg_Primary_Rating)
  LM_Rounds %<>% mutate(Round_Value = Round_Value + Avg_Primary_Rating + LM_Intercept)
  
  LM_Results <- list(LM_Rounds,LM_Players)
 


  if (RegType=="Ridge"){
    Results <- Ridge_Results
  } else {
    Results <- LM_Results
  }

  return(Results)
  
}
  

### Function to compile information about players & Tournaments ###

Player_Information <- function(Source_Data, Weight, Key_Date = Sys.Date()) {
  
  Key_Date <- as.Date(Key_Date)
  
  Min_Date <- min(Source_Data$Event_Date)
  Max_Date <- max(Source_Data$Event_Date)
  Data_Span <- as.duration(Max_Date - Min_Date)
  
  Source_Data %<>% mutate(Weights = Weight)
  
  Player_Summary <- Source_Data %>%
    group_by(Player_Name, Player_ID) %>% 
    summarize(Num_Rounds = n(),
               Sum_Primary = sum(Primary_Round*Weights),
               Sum_Weight = sum(Weights),
               Primary_Ratio = sum(Primary_Round*Weights)/sum(Weights),
               Primary_Player = round(sum(Primary_Round*Weights)/sum(Weights)),
               Country = names(table(Country))[table(Country) == max(table(Country))][1],
               Tour = names(table(Event_Tour_1))[table(Event_Tour_1) == max(table(Event_Tour_1))][1]
               )
  

  
  # Use closest 1 year of data to the key date that is in the data set
  
  if (Data_Span <= dyears(1)) {
    Max_Date_Use <- Max_Date
    Min_Date_Use <- Min_Date
  } else if (Min_Date >= (Key_Date - dyears(0.5))) {
    Min_Date_Use <- Min_Date
    Max_Date_Use <- Min_Date + dyears(1)
  } else if (Max_Date <= (Key_Date + dyears(0.5))) {
    Max_Date_Use <- Max_Date
    Min_Date_Use <- Max_Date - dyears(1)
  } else {
    Min_Date_Use <- as.Date(Key_Date - dyears(0.5))
    Max_Date_Use <- as.Date(Key_Date + dyears(0.5))
  }
  
  Year_Duration <- as.duration(Max_Date_Use - Min_Date_Use)
  
  Player_Summary_Year <- Source_Data %>% 
    filter(Event_Date>Min_Date_Use) %>%
    filter(Event_Date<Max_Date_Use) %>% 
    group_by(Player_Name, Player_ID) %>% 
    summarize(Num_Rounds_Yr = n(),
              Sum_Primary_Yr = sum(Primary_Round*Weights),
              Sum_Weight_Yr = sum(Weights),
              Primary_Ratio_Yr = sum(Primary_Round*Weights)/sum(Weights),
              Primary_Player_Yr = round(sum(Primary_Round*Weights)/sum(Weights)),
              Tour_Yr = names(table(Event_Tour_1))[table(Event_Tour_1) == max(table(Event_Tour_1))][1]
    ) %>% ungroup %>%
    mutate(Primary_Player_Yr = pmin(round(Num_Rounds_Yr/max(Num_Rounds_Yr)),Primary_Player_Yr))
  
  Player_Information_Combined <- left_join(Player_Summary,Player_Summary_Year, by = c("Player_Name","Player_ID")) %>% 
    mutate(Num_Rounds_Yr = ifelse(is.na(Num_Rounds_Yr), 0, Num_Rounds_Yr),
           Sum_Primary_Yr = ifelse(is.na(Sum_Primary_Yr), 0, Sum_Primary_Yr),
           Sum_Weight_Yr = ifelse(is.na(Sum_Weight_Yr), 0, Sum_Weight_Yr),
           Primary_Player_Yr = ifelse(is.na(Primary_Player_Yr), 0, Primary_Player_Yr)
           )
  
  return (Player_Information_Combined)
  
}

### Player Regression Wrapper ###

Player_Rating_Regression <- function(Raw_Data=Player_Results,
                                     Key_Date = Sys.Date(),
                                     Begin_Date="1990-01-01",
                                     End_Date="2050-01-01",
                                     Player_Min_Rounds=0,
                                     Tourn_Min_Players=0,
                                     Weight_Weekly_Exponent = 1,
                                     Duration_Full_Weight = weeks(0)) {
  
  Results_Source <- Filter_Player_Results(Raw_Data, Begin_Date, End_Date, Player_Min_Rounds, Tourn_Min_Players) 
  
  Weights_Vector <- Weight_Vector(Results_Source, Key_Date, Weight_Weekly_Exponent, Duration_Full_Weight)
  
  Player_Information_Trial <- Player_Information(Results_Source, Weights_Vector, Key_Date)
  
  Current_Regression <- LM_Regression_Ratings(Results_Source, Weights_Vector, Player_Information_Trial, "Linear")
 
  Regression_Player_Ratings <- Current_Regression[[2]] %>% 
    mutate (Rank = rank(Player_Value)) %>% .[order(.$Rank),] %>%
    select("Rank",
           "Player_Name",
           "Player_Value",
           everything())
  
  return(Regression_Player_Ratings)
   
}

### Round Difficulty Regression Wrapper ###

Round_Difficulty_Regression <- function(Raw_Data=Player_Results,
                                     Key_Date = Sys.Date(),
                                     Begin_Date="1990-01-01",
                                     End_Date="2050-01-01",
                                     Player_Min_Rounds=0,
                                     Tourn_Min_Players=0,
                                     Weight_Weekly_Exponent = 1,
                                     Duration_Full_Weight = weeks(0)) {
  
  Results_Source <- Filter_Player_Results(Raw_Data, Begin_Date, End_Date, Player_Min_Rounds, Tourn_Min_Players) 
  
  Weights_Vector <- Weight_Vector(Results_Source, Key_Date, Weight_Weekly_Exponent, Duration_Full_Weight)
  
  Player_Information_Trial <- Player_Information(Results_Source, Weights_Vector, Key_Date)
  
  Current_Regression <- LM_Regression_Ratings(Results_Source, Weights_Vector, Player_Information_Trial, "Linear")
  
  Regression_Round_Ratings <- Current_Regression[[1]] %>% 
    mutate (Rank = rank(-Round_Value)) %>% .[order(.$Rank),] %>%
    select("Rank",
           "Event_Name",
           "Event_Date",
           "Round_Value",
           everything())

  return(Regression_Round_Ratings)
  
}





  
### Simple Regression-Based Player Ratings ###

Date_of_Interest <- Sys.Date()
Begin_Date <- Date_of_Interest - years(3)
End_Date <- Date_of_Interest

# This outputs a pure "regression-based" player rating
Regression_Player_Ratings <- Player_Results %>%
  Player_Rating_Regression(.,
                           Key_Date = Date_of_Interest,
                           Begin_Date=Begin_Date,
                           End_Date=End_Date,
                           Player_Min_Rounds=40,
                           Tourn_Min_Players=15,
                           Weight_Weekly_Exponent = 0.97,
                           Duration_Full_Weight = weeks(0)) %T>%  
  write.csv(
    .,file = (
      paste0("Output/Trial_Ratings_",Date_of_Interest,".csv")
    ), row.names = FALSE
  ) 


### Upload Current Player Ratings to Google Spreadsheets ###

Upload_Google <- drive_upload(
  paste0("Output/Trial_Ratings_",Date_of_Interest,".csv"),
  "Sports/Golf/Golf Ratings/Recent_Ratings.csv",
  type = "spreadsheet"
) %>% drive_publish()


### Simple Regression-Based Round Ratings ###

Date_of_Interest <- Sys.Date()
Begin_Date <- Date_of_Interest - years(3)
End_Date <- Date_of_Interest

# This outputs a pure "regression-based" round rating
Round_Diff_Ratings <- Player_Results %>%
  Round_Difficulty_Regression(.,
                           Key_Date = Date_of_Interest,
                           Begin_Date=Begin_Date,
                           End_Date=End_Date,
                           Player_Min_Rounds=40,
                           Tourn_Min_Players=15,
                           Weight_Weekly_Exponent = 0.97,
                           Duration_Full_Weight = weeks(0)) %T>% View()



### Select data to use in regression ###

# Use this to establish where to center weighting and player information
Date_of_Interest <- Sys.Date()
Begin_Date <- Date_of_Interest - years(3)
End_Date <- Sys.Date()

Results_Source <- Filter_Player_Results(Player_Results, Begin_Date, End_Date, 40, 15) 

Weights_Vector <- Weight_Vector(Results_Source, Date_of_Interest, 0.97, weeks(0))

Player_Information_Trial <- Player_Information(Results_Source, Weights_Vector, Date_of_Interest)

Current_Regression <- LM_Regression_Ratings(Results_Source, Weights_Vector, Player_Information_Trial, "Linear")


Player_Adjusted_Scores <- Filter_Player_Results(Player_Results, Begin_Date, End_Date) %>%
  merge(.,select(Current_Regression[[1]],"Round_ID","Round_Value"),all.x=TRUE) %>%
  mutate(Adjusted_Score = Score - Round_Value) %>%
  select("Score","Round_Value","Adjusted_Score",everything()) %>% 
  .[order(.$Adjusted_Score),]




# Results_Source <- Filter_Player_Results(Player_Results,"2015-10-01","2017-10-01",40,15) 
# 
# Trial_Regression1617 <- LM_Regression_Ratings(Results_Source,1,"Linear")
# 
# # Checking to see how using before/after affecting rating of round difficulties
# 
# Compare_overlap_rounds <- merge(Trial_Regression1415[2],Trial_Regression1617[2], by = "row")
# 
# qplot(Compare_overlap_rounds$value.x,Compare_overlap_rounds$value.y)











