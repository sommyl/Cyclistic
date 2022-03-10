# Sophie_Portfolio
Data Analytics Portfolio

# [Project 2: Bellabeat: Projec Overview](https://github.com/sommyl/Sophie-Portfolio/)
* To analyse smart device usage data in order to gain insight into how consumers use non-Bellabeat smart devices and select one Bellabeat product to apply these insights to.

## Code Used
**SQL Github:** https://github.com/arapfaik/scraping-glassdoor-selenium  
**Tableau:** https://towardsdatascience.com/selenium-tutorial-scraping-glassdoor-com-in-10-minutes-3d0915c6d905  

## Data Cleaning

The data captured 30 eligible Fitbit users personal tracker data during 03.12.2016-05.12.2016 in csv format, 
including minute-level output for physical activity, heart rate, and sleep monitoring. 
I have  made the following changes:

*	Created new columns for ride length and day of the week
*	Removed rows with ride length less than 10 minutes
*	Removed rows with nil latittude and longtitude

## EDA & Visualisation 
* The most active hour for exerise is from 8am to 8pm. 
* Peak exercise slot is from 12pm to 2pm and from 5pm to 7pm. Higher intensity is recorded at night time.
* People exercise more on Fridays and Saturdays. Sundays is the least active day.
* People engage more in low intensity level of exercise.
* Geographic concetration of starting station and end station

## Recommendation
* In order to achieve maximum reach of casual riders, it is recommended that advertisement is to be placed  **during summer season** (monthly trend), **on the weekend** (day of the week), **from 12pm to 5pm** (hour of the day) and **in Harbour and Millennium Park area** (geographic concentration).
* In relation to the observation that casuals take longer rides than annual member, the company could use some form of communication as prompt at the end of each ride to recognise it as a milestone in order to entice future rides with more likelihood for member subscription.
