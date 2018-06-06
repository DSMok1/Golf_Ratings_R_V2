
# This was removed from the standard scraping file as unrelated


###  Import Current OWGR Rankings ####

library(plyr)
library(rvest)
library(magrittr)
library(lubridate)
library(stringr)
library(dplyr)


URL_Source = "http://www.owgr.com/ranking?pageNo=1&pageSize=All&country=All"
HTML_Source <- read_html(URL_Source)

Ranking_Date <-
  html_node(HTML_Source, "#ranking_table .sub_header") %>%
  html_text() %>% dmy() %>% as.Date()

# Player Data
OWGR_Rank <-
  html_nodes(HTML_Source, "#ranking_table td:nth-child(1)") %>%
  html_text() %>% as.integer()
OWGR_Rank_Last_Wk <-
  html_nodes(HTML_Source, "#ranking_table td:nth-child(2)") %>%
  html_text() %>% as.integer()
OWGR_Rank_Last_Yr <-
  html_nodes(HTML_Source, "#ranking_table td:nth-child(3)") %>%
  html_text() %>% as.integer()
Player_Country <-
  html_nodes(HTML_Source, "#ranking_table img.flag") %>% html_attr("alt")
Player_Name <-
  html_nodes(HTML_Source, "#ranking_table td.name") %>% html_text()
Player_ID <-
  html_nodes(HTML_Source, "#ranking_table .name a") %>% html_attr("href") %>% gsub("^.*=","",.) %>% as.integer()
Player_Avg_OWGR_Pts <-
  html_nodes(HTML_Source, "#ranking_table td:nth-child(6)") %>% html_text() %>% as.numeric()

Player_OWGR_Ranking <-
  cbind.data.frame(
    OWGR_Rank,OWGR_Rank_Last_Wk,OWGR_Rank_Last_Yr,Player_Country,
    Player_Name,Player_ID,Player_Avg_OWGR_Pts
  )
Player_OWGR_Ranking$OWGR_Rank_Date <- Ranking_Date
remove(
  OWGR_Rank,OWGR_Rank_Last_Wk,OWGR_Rank_Last_Yr,Player_Country,
  Player_Name,Player_ID,Player_Avg_OWGR_Pts
)

write.csv(
  Player_OWGR_Ranking,file = (
    "Data/Player_OWGR_Ranking_RVest.csv"
  ), row.names = FALSE
)

### Add in new OWGR to the Historic OWGR File


OWGR_History <- list.files(path="Data/", pattern="^Player_OWGR_Hist.+\\.csv$") %>%
  paste("Data/",., sep="") %>%
  lapply(., read.csv, stringsAsFactors = FALSE) %>%
  bind_rows() %>% transform(OWGR_Rank_Date = as.Date(OWGR_Rank_Date))


# Player_OWGR_Ranking <-
# read.csv(("Data/Player_OWGR_Ranking_RVest.csv"), stringsAsFactors = FALSE)

# OWGR_History <- rename(OWGR_History,
#                       OWGR_Rank = rank,
#                       OWGR_Rank_Date = week)

if (max(OWGR_History$OWGR_Rank_Date[!is.na(OWGR_History$OWGR_Rank_Date)])< max(Player_OWGR_Ranking$OWGR_Rank_Date)) {
  OWGR_Hist_Combined <-
    merge(OWGR_History,Player_OWGR_Ranking,all = TRUE)
  
  OWGR_History_Split <- split(OWGR_Hist_Combined, year(OWGR_Hist_Combined$OWGR_Rank_Date))
  
  for (i in seq_along(OWGR_History_Split)) {
    filename = paste("Data/Player_OWGR_Hist_",names(OWGR_History_Split)[i], ".csv", sep="")
    write.csv(OWGR_History_Split[[i]], filename, row.names = FALSE)
  }
}


