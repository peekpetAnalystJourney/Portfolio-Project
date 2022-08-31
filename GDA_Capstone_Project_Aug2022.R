#' ---
#' title: "GDA_Capstone_Project_Aug2022"
#' output: github_document
#' ---
#' 
## ----setup, include=FALSE-------------------------------------------------------------------------------------------------
# capture all the libraries here for ease of review)
library(tidyverse)
library(lubridate)
library(here)
library(skimr)
library(janitor)
library(geosphere)
knitr::opts_chunk$set(echo = FALSE)

#' 
#' # Project {.tabset}
#' 
#' ## Introduction
#' 
#' This project provides analysis of the previous 12-month of bike-share data. As a company, Cyclist has more than 5800 bicycles available for casual riders and members of Cyclist annual subscription program.
#' 
#' 
#' 
#' #### 1. Business Task
#' 
#' The business objectives of this analysis is to provide supporting analysis to help the management design the most effective marketting strategy which is key to the future growth of the company.
#' 
#' - Determine whether annual members and casual riders use bikes differently?
#' 
#' - Establish the condition or justification for casual riders to buy annual membership?
#' 
#' - Determine the possibility of using digital media to influence casual riders to become members?
#' 
#' 
#' 
#' #### 2. Stakeholders
#' 
#' The key stakeholders and roles are outlined in the table below.
#' 
#' 
## -------------------------------------------------------------------------------------------------------------------------
tibble::tibble("Stakeholders"=c("Cyclistic Executive Team", "Cyclistic Marketing Analytics Team","Lily Morano, Director of Marketing"),"Roles"=c(
  "Responsible for the approval of the recommended marketing strategy",
"Team of data analyst that can provide peer review of the project",
"Responsible for the development of campaigns and initiatives")) %>% 
gt::gt(caption = "Key Stakeholders")

#' 
#' 
#' #### 3. Data Source
#' 
#' - **Data Source:** Motivate Internation Inc.
#' licence <https://ride.divvybikes.com/data-license-agreement>
#' - Data downloaded on `r lubridate::ymd("2022-Aug-28")` 
#' 
#' - Data downloaded from <https://divvy-tripdata.s3.amazonaws.com/index.html>
#' 
#' - The dataset is reported to be reliable and appropriate to be analysed. I will carry out further checks to confirm.
#' 
#' - I have monthly data of bike share from Aug 2021 to July 2022 available as at the time that I downloaded the data. 
#' 
#' 
#' 
#' 
## ----comment=FALSE, include=FALSE, warning=FALSE--------------------------------------------------------------------------
# setwd(getwd())

# The first step is to use reader to convert the csv data to dataframe 

tripdata_0722 <- readr::read_csv("202207-divvy-tripdata.csv")     #1
tripdata_0622 <- readr::read_csv("202206-divvy-tripdata.csv")     #2
tripdata_0522 <- readr::read_csv("202205-divvy-tripdata.csv")     #3
tripdata_0422 <- readr::read_csv("202204-divvy-tripdata.csv")     #4
tripdata_0322 <- readr::read_csv("202203-divvy-tripdata.csv")     #5
tripdata_0222 <- readr::read_csv("202202-divvy-tripdata.csv")     #6
tripdata_0122 <- readr::read_csv("202201-divvy-tripdata.csv")     #7
tripdata_1221 <- readr::read_csv("202112-divvy-tripdata.csv")     #8
tripdata_1121 <- readr::read_csv("202111-divvy-tripdata.csv")     #9
tripdata_1021 <- readr::read_csv("202110-divvy-tripdata.csv")     #10
tripdata_0921 <- readr::read_csv("202109-divvy-tripdata.csv")     #11
tripdata_0821 <- readr::read_csv("202108-divvy-tripdata.csv")     #12

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
#' I reviewed each monthly data and carried out the following checks:
#' 
#' - Compare the **column names to check for consistency** before merging them together.
#' 
#'     - **Outcome:** Columns labels are consistent in all the files.
#' 
#' - Check **correctness and consistency** of Character types.
#' 
#'     - **Outcome:** Data types are consistent and correct.
#' 
#' - Check the **uniqueness** of the primary key: **ride_id**.
#' 
#'     - **Outcome:** No duplicate in the primary key.
#' 
#' - Check the **completeness** of the data.
#' 
#'     - **Outcome:** There are NAs values in some columns in all the files. I will address this issue after merging the files.
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0722

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0622

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0522

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0422

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0322

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0222

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0122

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_1221

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_1121

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_1021

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0921

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
# this code is not included in the html report
# A quick look at the structure of this dataset 

dfname <- tripdata_0821

dplyr::glimpse(dfname)
colnames(dfname)
skimr::skim_without_charts(dfname)

names(which(colSums(is.na(dfname))>0))
str(dfname)
summary(dfname)

tail(dfname)

which(duplicated(dfname[,1])==TRUE)

knitr::opts_chunk$set(echo = FALSE)

#' 
#' 
#' - After completing the review of individual files, I **combined the monthly data to get the last 12-month trips**.
#' 
## -------------------------------------------------------------------------------------------------------------------------
trips_12months <- dplyr::bind_rows(tripdata_0722,tripdata_0622,tripdata_0522,tripdata_0422,
tripdata_0322,tripdata_0222,tripdata_0122,tripdata_1221,tripdata_1121,tripdata_1021,tripdata_0921,tripdata_0821)

trips_12months <- as_tibble(trips_12months)

#' 
#' 
#' - The table below is a sample of the combined dataset.
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
tail(trips_12months) %>% 
  gt::gt(caption="sample of bikeshare dataset")

#' 
#' 
#' check the following:
#' 
#' - Check the uniqueness of the primary key: *ride_id*.
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
which(duplicated(trips_12months$ride_id)==TRUE)

#' 
#' 
#'     - **outcome:** no duplicate in the primary key of the combined dataset.
#' 
#' - High level summary of data. Check for incomplete data
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
skimr::skim_without_charts(trips_12months)

unknown <- names(which(colSums(is.na(trips_12months))>0))



#' 
#' - There are unknown values. Majority of the unkown values are in the following columns **`r unknown[1:4]` with a total null values of `r sum(is.na(trips_12months$start_station_name)) + sum(is.na(trips_12months$start_station_id)) + sum(is.na(trips_12months$end_station_name)) + sum(is.na(trips_12months$end_station_id))`.**
#' 
#' - The remaining null values are in the columns **`r unknown[5:6]`, with a total null values of `r sum(is.na(trips_12months$end_lat)) + sum(is.na(trips_12months$end_lng))`.**
#' 
#' 
#' 
#' ## Data Cleaning and Manipulation
#' 
#' - The reason for the null values are unknown. However, we know that the ride_id are unique for all entries. Moreover, we have complete data in the start_time and end_time columns.I will **replace all the null values with character string "unknown" in the following columns `r unknown[1:4]`.**
#' 
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
trips_clean <- trips_12months %>% 
  tidyr::replace_na(list(start_station_name="unknown",
                         start_station_id="unknown",
                         end_station_name="unknown",
                         end_station_id="unknown")) %>% 
  rename(user_category = member_casual) 




#' 
#' I did a quick check to that sure that the data do no longer contain NAs in these **`r unknown[1:4]`.**.
#' 
#' However, there are still NAs in the **end_lat and end_lng**. I will address this issue next.
#' 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
names(which(colSums(is.na(trips_clean))>0)) 

#' 
#' 
#' - The trips with NAs values in end_lat and end_lon has actual trip duration. Unfornately, I am not sure why the NAs values are reported. I will replace the NAs values with start_lat and start_lng respectively. This will set the distance between the start and end as zero for these locations (NAs) only. I think this is better than leaving the NAs values in those 2 columns. 
#' 
#' - Final check after replacing remaining NAs. 
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
trips_clean <- trips_clean %>% 
   mutate(end_lat=case_when(is.na(end_lat)~start_lat,TRUE~end_lat),
         end_lng=case_when(is.na(end_lng)~start_lng,TRUE~end_lng))

names(which(colSums(is.na(trips_clean))>0)) 

#' 
#'     - **Outcome:** No NAs in the dataset.
#'   
#' - Add a new attribute that will show the duration of each trip in seconds
#' 
#' - Sort dataset with the started_at date column 
#' 
## ----include = FALSE------------------------------------------------------------------------------------------------------
trips_clean <- trips_clean %>% 
dplyr::mutate(duration_secs =  (ended_at - started_at)) %>% 
  arrange(started_at)

#' 
#' - Add two additional attributes start_day and start_month labels
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
trips_clean <- trips_clean %>% 
  dplyr::mutate(started_month=month(started_at,label = TRUE),started_day=wday(started_at,label = TRUE))

#' 
#' 
#' - Add a new attribuate that calculate the distance for each trip from the latitude and longitude points
#' 
## ----include=FALSE--------------------------------------------------------------------------------------------------------
trips_clean <- trips_clean %>% 
  dplyr::mutate(distance_trip=distHaversine(cbind(start_lat, start_lng),cbind(end_lat, end_lng)))


#' 
#' 
#' ## Summary of Analysis 
#' 
#' **1. Review the number, duration and distance of trips by Casual Riders and Annual Members with a bar chart.**
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
trips_clean %>% 
  ggplot(aes(x=user_category,fill=user_category))+geom_bar()+labs(title = "Number of trips per user category",caption = "source: Motivate Internation Inc")

#' 
#' - There are more reported trips by members versus trips by casual users in the previous 12 months. Annual members embark on more trips over the previous 12-months compared to the Casual Riders.
#' 
#' However, a good indication of the accrued revenue from these trips would be the distance covered or duration of the trip. **The duration and distance of the trips can give us the indication of revenue earned from these trips.**
#' 
#' 
## ----warning=FALSE--------------------------------------------------------------------------------------------------------
trip_sum <- trips_clean %>%
  dplyr::group_by(user_category) %>% 
  dplyr::summarise(total_duration = sum(duration_secs)) 
trip_sum <- trip_sum %>% 
  dplyr::mutate(percent_trip =  sprintf("%1.2f%%",100*(as.double(total_duration) / as.double(sum(total_duration))))) 

label1 = as.character(trip_sum$percent_trip[1])
label2 = as.character(trip_sum$percent_trip[2])

trip_sum %>% 
  ggplot(aes(x=user_category,y=total_duration,fill=user_category))+geom_col()+labs(title = "Total duration of trips per user category",caption = "source: Motivate Internation Inc") + annotate("text",y=4e9,x="casual",label=label1) + annotate("text",y=2e9,x="member",label=label2) + scale_y_continuous()

#' 
#' - Casual bike rider makes up `r label1` of the total duration of all trips in the last 12 months with subscribed members proportion of total duration only `r label2`. **This shows the importance of casual bike rider to the total revenue of the firm.** 
#' 
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
trip_sum1 <- trips_clean %>%
  dplyr::group_by(user_category) %>% 
  dplyr::summarise(total_distance = sum(distance_trip)) 


trip_sum1 %>% 
  ggplot(aes(x=user_category,y=total_distance,fill=user_category))+geom_col()+labs(title = "Total distance (m) of trips per user category",caption = "source: Motivate Internation Inc") 

#' 
#' - Casual users travel shorter distance compared to annual members.This an interesting observation. However, I need to review the average distance covered per user as well (i.e. average distance per trip).
#' 
#' *Note: Unfortunately, The replaced NAs in the end_lat and end_lon attributes might have some impact on the calculated distance.*
#' 
#' 
#' **2. Review the duration of trips by user_category and rideable_type with a bar chart to see if there is rideable_type prefered by casual riders compared to annual members.**
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
trip_sum <- trips_clean %>%
  dplyr::group_by(user_category, rideable_type) %>% 
  dplyr::summarise(total_duration = sum(duration_secs),.groups = "drop_last") 
trip_sum <- trip_sum %>% 
  dplyr::mutate(percent_trip =  sprintf("%1.2f%%",100*(as.double(total_duration) / as.double(sum(total_duration))))) 


trip_sum %>% 
  ggplot(aes(x=user_category,y=percent_trip,fill=user_category))+geom_col()+labs(title = "Percent duration of trips per user category per ride_type",caption = "source: Motivate Internation Inc") + facet_wrap(~rideable_type)

#' 
#' - It is interesting that **only casual riders are using the docked_bike category**.I need to investigate this further. *Is this a unique ride_type or a mis-classification?* If the data is representative, then there is an opportunity to explore how to convert the docked_bike casual riders to member.
#' 
#' **3. Review whether there is (montly and daily) variation in Casual and annual members trip duration.**
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
trips_clean %>% 
  dplyr::group_by(user_category,started_month) %>% 
  dplyr::summarise(num_rides = n(),.groups = "drop_last") %>% 
  ggplot(aes(x=started_month,y=num_rides,fill=user_category))+geom_col()+labs(title = "Monthly variation in number of rides per user category",caption = "source: Motivate Internation Inc")

#' 
#' 
#' - We can also plot a time-series of the same trend.
#' 
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
trips_clean %>% 
  dplyr::mutate(start_date= as.Date(started_at)) %>% 
  dplyr::group_by(user_category,start_date) %>% 
  dplyr::summarise(num_rides = n(),.groups="keep") %>% 
    ggplot(aes(x=start_date,y=num_rides,color=user_category))+geom_smooth(method="loess",se=FALSE,formula=y~x)+labs(title = "Smoothed Time Series of the variation in number of rides per user category",caption = "source: Motivate Internation Inc")

#' 
#' Recall that the period analysed is from Aug 2021 to July 2022.
#' 
#' - **Majority of the bike rides occur in the months of May to Oct.** This is likely to be due to the **warmer weather** during that time of the year i.e. late spring, early summer and early fall. This observation is consistent with the trend in the smoothed time series plot.
#' 
#' 
#' - The proportion of bike riders is higher for annual members in the colder months of Nov, Dec, Jan - April. **It is already reported that some members are using the bike to commute to their place of work possibly throughout the year.**
#' 
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
df<- trips_clean %>% 
  dplyr::group_by(user_category,started_day) %>% 
  dplyr::summarise(num_rides = n(),.groups = "drop_last") 
df1 <- df %>% 
 dplyr::mutate(percent_rides =  sprintf("%1.2f%%",100*(as.double(num_rides) / as.double(sum(num_rides))))) 

 df1%>% 
  gt::gt(caption = "Summarized Daily Variation in number and percent of rides")


#' 
#' 
## -------------------------------------------------------------------------------------------------------------------------
df%>% 
ggplot2::ggplot(aes(x=started_day,y=num_rides,fill=user_category))+geom_col()+labs(title = "Daily variation in number of rides per user category",caption = "source: Motivate Internation Inc")


#' 
#' 
#' - Casual riders use the bike more on **(sunday: `r df1$percent_rides[1]`, and saturday: `r df1$percent_rides[7]`)** compared to each of the other days.
#' 
#' - Annual members predominantly use the bike during the week **i.e. Mon to Fri (`r sprintf("%1.2f%%",100*sum(df1$num_rides[9:13])/sum(df1$num_rides[8:14]))`)** compared to weekend (`r sprintf("%1.2f%%",100*(1-sum(df1$num_rides[9:13])/sum(df1$num_rides[8:14])))`)
#' 
#' 
#' **3. We can summarize the duration and distance in a table for ease of comparison.** 
#' 
## ----comment=FALSE, warning=FALSE-----------------------------------------------------------------------------------------
trips_clean %>% 
  dplyr::group_by(user_category) %>% 
  dplyr::summarise("Average distance"= mean(distance_trip), "Total distance"=sum(distance_trip),"Average duration"= mean(as.double(duration_secs)), "Total duration"=sum(as.double(duration_secs))) %>% 
  gt::gt(caption="aggregation of distance and duration of trips by user category") %>% 
  gt::fmt_number(columns=2:5,use_seps = TRUE) %>% 
  gt::tab_style(
    style = list(
      gt::cell_fill(color = "#F9E3D6"),
      gt::cell_text(weight = "bold"),
      gt::cell_borders(
          sides = c("top", "bottom","left","right"),
          color = "#FF0000",
          weight = gt::px(2))
      ),
    locations = gt::cells_body(
      columns = c(2,4:5),
      rows = 1)) %>% 
  gt::tab_style(
    style = list(
      gt::cell_fill(color = "#F9E3D6"),
      gt::cell_text(weight = "bold"),
      gt::cell_borders(
          sides = c("top", "bottom","left","right"),
          color = "#FF0000",
          weight = gt::px(1.5))
      ),
    locations = gt::cells_body(
      columns = 3,
      rows = 2))

#' 
#' - The observed trend is consistent with previously noted trend of **casual users traveling over higher total duration but shorter total distance compared to annual members. However, average duration and average distance are higher for casual riders vs annual members.**
#' 
#' 
#' **Finally, we can export the clean data for futher analysis.**
#' 
## -------------------------------------------------------------------------------------------------------------------------
readr::write_csv(trips_clean,"clean_bikeshare.csv")

#' 
#' 
#' 
#' ## Summary of Findings 
#' 
#' 1. The identified differences between Casual Riders and Annual Members are:
#' 
#'   - Casual riders are more like to use the bike share during the warmer months (May to Oct).
#'   
#'   - There are significant less Casual riders in the colder months compared to Annual Members.
#'   
#'   - The average duration and distance of Casual Riders is more than those of Annual Members.
#'   
#'   - Casual riders use the bike share more on Saturday and Sunday compared to each of the other days.
#'   
#'   - Annual members use the bike significantly more on weekdays compared to weekend. 
#'   
#'   - It can be inferred that Annual Members are more likely to use the bike to commute to work compared to casual riders.
#'   
#'   - According to the data, only Casual riders are using the Docked bike type.However, this is likely due to misclassification or erroneuous entry.
#' 
#' 
#' 2. The conditions or justifications for Casual members to buy annual membership are:
#' 
#'   - There must be a price/cost justification for casual riders to buy a full year membership because 
#'   
#'         (a) Casual riders are more likely to use the bike during the warmer months.
#'         
#'         (b) Casual riders are more likely to ride the bike leisurely.
#' 
#' 3. One way that digital media can be used to influence the casual riders to become annual members is by rolling out advertising campaigns that would highlight the health benefits of riding bikes throughout the years. 
#' 
#'   - If more casual members can use the bike to commute to work and other places, then they would see the cost advantage of annual membership.
#' 
#' ## Top Three Recommendations
#' 
#' 1. Create more **flexible categories of membership such as monthly, quarterly and fixed-period** because Casual riders use the bike mostly during the warmer months for leisure purpose.
#' 
#' 2. Create a **marketing campaigns showing the health benefit of riding bikes more often than just for leisure purpose.** This can be based on a health survey or study comparing the health benefit of an occasional casual riders with those of a consistent annual member.
#' 
#' 3. Create a marketing campaign highlighting the **environmental friendliness of bikes versus other mode of transportation.** This could potentially attract environmental conscious casual member to buy annual membership.
