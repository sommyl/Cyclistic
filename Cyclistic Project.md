# Sophie_Portfolio
Data Analytics Portfolio

# [Project 1: Cyclistic: Project Overview](https://github.com/sommyl/Sophie-Portfolio/blob/main/Cyclistic%20Project.md)
* Design marketing strategies aimed at converting casual riders into annual members for a bikeshare company in Chicago

## Code Used
**SQL Github:** https://github.com/sommyl/Sophie-Portfolio/blob/main/Cyclistic.sql

**Tableau:** https://public.tableau.com/app/profile/sophie.liu3966/viz/Cyclistic_16450573041030/Story1

## Data Cleaning

The dataset contains 12 months rides information from Dec 2021 to Jan 2022 with 13 columns including

* Ride ID
* Bike type
* Start date and time
* End date and time 
* Start station name
* Start station ID
* End station name
* End station ID
* Start latitude
* Start longtitude
* End latitude
* End longtitude
* Member casual status

Following changes were made in the cleaning process

*	Created a new table and used union all function to merge 12 CSV files of monthly ride information with in total c. 5 million rows 
*	Created a new column for ride length as duration from start time to end time by using DATEDIFF fuction
*	Created a new column for day of the week from start date by utilising DATENAME function to convert YYYYMMDD HH:MM:SS date format into day of the week  
*	Shortened ride ID to save memory as this information is not critical
*	Removed columns "End date and time" and "Station ID" as this information is redundant 
*	Removed 2,207,583 rows for ride length less than 10 minutes as this is considered too short for trip length
*	Removed 4,754 rows with nil latittude and longtitude due to incomplete information for geographic mapping

## EDA & Visualisation 
Analysis is focused on observing difference in ride patterns between casual and member riders in order to derive insights for conversion strategy. All information given in the dataset has been utilised to construct analysis as follows
* Number of rides and ride length (derived from rider ID and time information) have been compared between casuals and members by frequency of month, day of the week and time of the day in order to identify the optimum period for advertising with widest reach 
* Start station and end station (pin dropped on the map based on latitude and longtitude) have been mapped out to find out concentration of ride locations between casuals and members and the optimum location for advertising

![alt text](https://github.com/PlayingNumbers/ds_salary_proj/blob/master/salary_by_job_title.PNG "Salary by Position")
![alt text](https://github.com/PlayingNumbers/ds_salary_proj/blob/master/positions_by_state.png "Job Opportunities by State")
![alt text](https://github.com/PlayingNumbers/ds_salary_proj/blob/master/correlation_visual.png "Correlations")

## Recommendation
In order to achieve maximum reach of casual riders, it is recommended that 
* Advertisement is to be placed **during summer season** **on the weekend** **from 12pm to 5pm** as data indicated that this is when casual riders are most active measured by average number of trips taken.
* The ideal location for advertising is **in Harbour and Millennium Park area** which captures higher density of start and end point for casual riders.
* Based on ride length comparison which shows casuals takes longer rides in kms than members, the company could some form of communication as prompt at the end of each ride to recognise a milestone of kms achieved in comparison to an average member user to incentivise future rides which may subsequently result in member conversion.
