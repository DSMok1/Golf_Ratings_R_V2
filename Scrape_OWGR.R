###

# Scraping the OWGR stats with RVest

###

### Imports ####
library(plyr)
library(rvest)
library(magrittr)
library(lubridate)
library(stringr)
library(dplyr)
library(purrr)

### Make this a Function ####

Import_Tourney_Results <- function(ID)  {
  ### Imports ####
  library(plyr)
  library(rvest)
  library(magrittr)
  library(lubridate)
  library(stringr)
  library(dplyr)
  library(purrr)
  
  ### Variables ####
  
  Event_ID = ID # Change back to "ID" when done with testing/editing 
  
  
  ### Download Page ####
  
  URL_Source = paste0("http://www.owgr.com/en/Events/EventResult.aspx?eventid=",Event_ID)
  
  HTML_Source <- read_html(URL_Source)
  # Refer to RVest docs and SelectorGadget for how to access html nodes
 
  
  ### Testing Block for new approach ####
  

  ### Import Elements ####
  
  # Initialized status of scraping (overwrite if a webpage is found)
  Status_Scrape <- "Tournament ID Not Valid"
  
  # Event Wide Data
  Event_Name <-
    html_node(HTML_Source, "#event_result_table h2") %>% html_text()
  
  # Initialize Event & Player Data
  Event_Data <- NA
  Player_Data <- NA
  
  ## This if() wraps the entire import of data from the webpage--
  ## there needs to be a tournament name before attempting import
  if (Event_Name != "") {
    
    # Set the default Status
    Status_Scrape <-
      "No Player Information for this tournament available"

    # This brings in a vector of event tours from the multiple logos that cycle
    Event_Tour <-
      html_nodes(HTML_Source, ".event_logo") %>% html_attr("src") %>%
      gsub("^.*/","",.) %>% gsub("\\.a.*$","",.) %>% as.vector()  

    Event_Tour_1 = Event_Tour[1]
    Event_Tour_2 = Event_Tour[2]
    Event_Tour_3 = Event_Tour[3]
    
    Event_Date <-
      html_node(HTML_Source, "#event_result_table time") %>% html_text() %>% dmy() %>% as.Date()
    
    # Compile the event-wide data into a simple data frame
    Event_Data <-
      cbind.data.frame(
        Event_Name,Event_ID,Event_Date,Event_Tour_1,Event_Tour_2,Event_Tour_3,stringsAsFactors = FALSE
      )
    
    # Next consider the actual primary data table
    # Is this a completed event, coming soon, or far in the future?
    # Look at the header of the first column in the table... assuming it exists
    First_Col <-
      html_nodes(HTML_Source, "#phmaincontent_0_ctl00_PanelCurrentEvent .header:nth-child(1)") %>% 
      html_text(., trim = TRUE)
    
    # Put a zero in "First_Col" if there's nothing there
    if (length(First_Col) == 0) {
      First_Col <- 0
    } 
    
    
    ## This if wraps all of the importing of tournament results
    if (First_Col == "Pos") {
      # Player Results if the tournament is completed
      Status_Scrape <- "Tournament Results Collected"
      
      # Get the primary table's header
      Raw_Table_Header <-
        html_nodes(HTML_Source,
                   "#phmaincontent_0_ctl00_PanelCurrentEvent .header") %>%
        html_text(., trim = TRUE) %>% revalue(., c("Ctry" = "Country",
                                                   "Agg" = "Total",
                                                   "Name" = "Player_Name",
                                                   "Ranking Points" = "WGR_Pts"))
      
      # Parse the primary data table
      Player_Data_Raw  <-
        html_table(
          html_node(
            HTML_Source,
            "#phmaincontent_0_ctl00_PanelCurrentEvent table:nth-child(1)"
          ), header = TRUE, trim = TRUE, fill = TRUE, dec = ".") 
      
      # Remove header data from first row, if it's there
      if (Player_Data_Raw[1,1]=="Pos") {
        Player_Data_Raw  %<>% set_colnames(Raw_Table_Header) %>% extract(-1, )
      }
      
      # Clean up data types
      Player_Data_Raw  %<>% type.convert(as.is = TRUE, na.strings = c("-"))

      # Add in the integer form of the position
      Player_Data_Raw %<>% mutate(Pos_Num = as.integer(gsub("\\D","",Pos)))
      
      # Scrape the two items that are hidden in HTML attributes
      Player_Data_Raw$Country <- html_nodes(HTML_Source, "#phmaincontent_0_ctl00_PanelCurrentEvent .flag") %>% html_attr("alt")
      Player_Data_Raw$Player_ID <-
        html_nodes(HTML_Source, "#phmaincontent_0_ctl00_PanelCurrentEvent a") %>% html_attr("href") %>% gsub("^.*=","",.) %>% as.integer()

         
      # if there are no scores here:
      if (max(Player_Data_Raw$Total) == 0) {
        Status_Scrape <- "No Tournament Scores Available"
        
        Player_Data <-
          Player_Data_Raw[,c("Player_Name","Player_ID","Country","Pos","Pos_Num","WGR_Pts")]
        
      } else {
        
        # Only include the column names of length 2 (i.e. R1, R2)
        Rounds_Vector <-
          colnames(Player_Data_Raw)[nchar(colnames(Player_Data_Raw)) == 2]
        
        # Reshame data into tall form, with one row per round
        Player_Data <-
          reshape(
            Player_Data_Raw, varying = Rounds_Vector, timevar = "Round_Num",
            sep = "", direction = "long"
          )
        names(Player_Data)[names(Player_Data) == "R"] <- "Score"
        Player_Data <- subset(Player_Data,select = -c(id))
        
      }
      
      #Merge in Tournament Information
      Player_Data <- mutate(
        Player_Data,
        Event_Name = Event_Name,
        Event_ID = Event_ID,
        Event_Date = as.Date(Event_Date),
        Event_Tour_1 = Event_Tour_1,
        Event_Tour_2 = Event_Tour_2,
        Event_Tour_3 = Event_Tour_3
      )
      
      
    }
    
    ## This if wraps the importing of upcoming tournament fields
    if (First_Col == "World Ranking") {
      # Players in the tournament if the tournament is coming soon
      Status_Scrape <- "Upcoming Tournament Field Collected"
      
      WGR_Rank <-
        html_nodes(HTML_Source, "#phmaincontent_0_ctl00_PanelCurrentEvent td:nth-child(1)") %>% html_text()
      Country <-
        html_nodes(HTML_Source, "#phmaincontent_0_ctl00_PanelCurrentEvent .flag") %>% html_attr("alt")
      Player_Name <-
        html_nodes(HTML_Source, "#phmaincontent_0_ctl00_PanelCurrentEvent a") %>% html_text()
      Player_ID <-
        html_nodes(HTML_Source, "#phmaincontent_0_ctl00_PanelCurrentEvent a") %>% html_attr("href") %>% gsub("^.*=","",.) %>% as.integer()
      
      Player_Data <-
        cbind.data.frame(Player_Name,Player_ID,Country,WGR_Rank)
      remove(Player_Name,Player_ID,Country,WGR_Rank)
      
      #Merge in Tournament Information
      Player_Data <- mutate(
        Player_Data,
        Event_Name = Event_Name,
        Event_ID = Event_ID,
        Event_Date = as.Date(Event_Date),
        Event_Tour_1 = Event_Tour_1,
        Event_Tour_2 = Event_Tour_2,
        Event_Tour_3 = Event_Tour_3
      )
      
    }
  }
  
  Status <- cbind.data.frame(Event_ID,Status_Scrape)
  
  Status$Scrape_Date <- Sys.Date()
  Event_Data$Scrape_Date <- Sys.Date()
  Player_Data$Scrape_Date <- Sys.Date()
  
  # Add in the replacement of the Event_Tour

  # Tour_Remap <- read.csv("ID_Maps/Tour_ID_Map.csv", stringsAsFactors = FALSE)
  # mapvalues(.,Tour_Remap$Tour_OWGR,Tour_Remap$Tour)
  
  
  #Here's what to return
  Output <- list(Status_Scrape,Status,Event_Data,Player_Data)
  
}

### Try out the Function ####


# Result <- Import_Tourney_Results(6085)
# str(Result)


### Read in Previous Data, if it exists ####

# Previous Player Results Scrape Output:

Player_Result_Folder <- "Data/Player_Results/"
Player_Result_File_List <- dir(Player_Result_Folder, pattern="*.csv")
Player_Results_Raw <- Player_Result_File_List %>%
  map_dfr(~ read.csv(file.path(Player_Result_Folder,.),stringsAsFactors = FALSE))


Tournament_Info_Raw <- read.csv("Data/Tournament_Info_RVest.csv", stringsAsFactors = FALSE)
Scrape_Status_Raw <- read.csv("Data/Scrape_Status_RVest.csv", stringsAsFactors = FALSE)
# Upcoming_Fields <- read.csv("Data/Upcoming_Fields_RVest.csv")


Player_Results <- Player_Results_Raw[!is.na(Player_Results_Raw$Event_Date),]
Player_Results$Event_Date <- as.Date(Player_Results$Event_Date)
Player_Results$Scrape_Date <- as.Date(Player_Results$Scrape_Date)

Tournament_Info <- Tournament_Info_Raw[!is.na(Tournament_Info_Raw$Event_Date),]
Tournament_Info$Event_Date <- as.Date(Tournament_Info$Event_Date)
Tournament_Info$Scrape_Date <- as.Date(Tournament_Info$Scrape_Date)

Scrape_Status <- Scrape_Status_Raw[,c("Event_ID","Status_Scrape","Scrape_Date")]
Scrape_Status$Scrape_Date <- as.Date(Scrape_Status$Scrape_Date)

### IDs to Scrape ####

# Rescrape last 2 weeks of data:

Last_Date <- max(as.Date(Player_Results$Event_Date)) - 15
Last_ID <- max(Tournament_Info[as.Date(Tournament_Info$Event_Date) < Last_Date,]$Event_ID)

# Grab future data as well
Future_ID <- as.integer(Sys.Date() - Last_Date + 14) * 2 + Last_ID


Begin_ID <- as.integer(Last_ID + 1)
End_ID <- as.integer(Future_ID)


# This is only needed if this is a new scrape:
# Scrape_Status <- data.frame()
# Player_Results <- data.frame()
# Tournament_Info <- data.frame()

Upcoming_Fields <- data.frame()


### Clear out results to be updated ####

Player_Results <- Player_Results[Player_Results$Event_ID < Begin_ID,]
Tournament_Info <- Tournament_Info[Tournament_Info$Event_ID < Begin_ID,]
Scrape_Status <- Scrape_Status[Scrape_Status$Event_ID < Begin_ID,]


### Loop Extracting Data ####

for (ID in Begin_ID:End_ID) {
  Output_Data <- Import_Tourney_Results(ID)   # Scrape the given ID
  
  
  # Compile the status of the scraping
  if (nrow(Scrape_Status) == 0) {
    Scrape_Status <- as.data.frame(Output_Data[[2]])
    
  } else {
    Scrape_Status <-
      rbind.data.frame(Scrape_Status,as.data.frame(Output_Data[[2]]))
  }
  
  
  # If the ID is valid, compile the event information
  if (!Output_Data[[1]] == "Tournament ID Not Valid") {
    if (nrow(Tournament_Info) == 0) {
      Tournament_Info <- as.data.frame(Output_Data[[3]])
      
    } else {
      Tournament_Info <-
        rbind.data.frame(Tournament_Info,as.data.frame(Output_Data[[3]]))
    }
    
  }
  
  
  # If the event is completed, collect the results
  if (Output_Data[[1]] == "Tournament Results Collected") {
    if (nrow(Player_Results) == 0) {
      Player_Results <- as.data.frame(Output_Data[[4]])
      
    } else {
      Player_Results <-
        rbind.data.frame(Player_Results,as.data.frame(Output_Data[[4]]))
    }
    
  }
  
  
  #If the event is upcoming, collect the fields
  if (Output_Data[[1]] == "Upcoming Tournament Field Collected") {
    if (nrow(Upcoming_Fields) == 0) {
      Upcoming_Fields <- as.data.frame(Output_Data[[4]])
      
    } else {
      Upcoming_Fields <-
        rbind.data.frame(Upcoming_Fields,as.data.frame(Output_Data[[4]]))
    }
    
  }
  
 
  
   
  #Progress Indicator:
  cat((ID - Begin_ID + 1) / (End_ID - Begin_ID + 1) * 100,"%  --  ID",ID,"of",Begin_ID,"to",End_ID,"\n"
  )
  
  # Sys.sleep(1)  # Sleep the loop for 1 second
}

#
# library(microbenchmark)
# times <- microbenchmark()


### Filter out unnecessary player result data ####
Player_Results <- Player_Results %>% 
  filter(Score > 55 & Score < 125 & Pos != "WD" & Pos != "DQ" )

Scrape_Status <- merge(Scrape_Status,Tournament_Info[,c("Event_ID","Event_Name","Event_Date")],all.x = TRUE)

###  Output CSVs ####

write.csv(
  Player_Results,file = (
    "Data/Player_Results_RVest.csv"
  ), row.names = FALSE
)

write.csv(
  Tournament_Info,file = (
    "Data/Tournament_Info_RVest.csv"
  ), row.names = FALSE
)
write.csv(
  Scrape_Status,file = (
    "Data/Scrape_Status_RVest.csv"
  ), row.names = FALSE
)
write.csv(
  Upcoming_Fields,file = (
    "Data/Upcoming_Fields_RVest.csv"
  ), row.names = FALSE
)





