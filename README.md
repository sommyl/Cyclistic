# Sophie_Portfolio
Data Analytics Portfolio

# [Project 1: Cyclistic: Projec Overview](https://github.com/sommyl/Sophie-Portfolio/)
* Design marketing strategies aimed at converting casual riders into annual members for a bikeshare company in Chicago

## Code Used
**SQL Github:** https://github.com/arapfaik/scraping-glassdoor-selenium  
**Tableau dashboard:** https://towardsdatascience.com/selenium-tutorial-scraping-glassdoor-com-in-10-minutes-3d0915c6d905  

## Data Cleaning
After scraping the data, I needed to clean it up so that it was usable for our model. I made the following changes and created the following variables:

*	Parsed numeric data out of salary 
*	Made columns for employer provided salary and hourly wages 
*	Removed rows without salary 
*	Parsed rating out of company text 
*	Made a new column for company state 
*	Added a column for if the job was at the company’s headquarters 
*	Transformed founded date into age of company 
*	Made columns for if different skills were listed in the job description:
    * Python  
    * R  
    * Excel  
    * AWS  
    * Spark 
*	Column for simplified job title and Seniority 
*	Column for description length 

## EDA
I looked at the distributions of the data and the value counts for the various categorical variables. Below are a few highlights from the pivot tables. 

![alt text](https://github.com/PlayingNumbers/ds_salary_proj/blob/master/salary_by_job_title.PNG "Salary by Position")
![alt text](https://github.com/PlayingNumbers/ds_salary_proj/blob/master/positions_by_state.png "Job Opportunities by State")
![alt text](https://github.com/PlayingNumbers/ds_salary_proj/blob/master/correlation_visual.png "Correlations")

## EDA & Visualisation 
* Number of trips and average ride length per month, day of the week and each hour during the day  
* Geographic concetration of starting station and end station

## Recommendation
* In order to achieve maximum reach of casual riders, it is recommended that advertisement is to be placed  **during summer season** (monthly trend), **on the weekend** (day of the week), **from 12pm to 5pm** (hour of the day) and **in Harbour and Millennium Park area** (geographic concentration).
