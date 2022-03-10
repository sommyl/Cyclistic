select*
from dailyActivity
where TotalDistance != TrackerDistance

----There are 15 records where total distance is not equal to tracker distance; total distance appears to be the complete record as sum of 
----very active, moderately active, light active distance and sedentary active distance
----for the purpose of analysis, tracker distance column is deleted

alter table dailyActivity
drop column TrackerDistance

----Also from observation, logged activities appears to be a stand-alone record which does not relate to breakdown of distance, hence, logged activities column is also deleted.

alter table dailyActivity
drop column LoggedActivitiesDistance

select*
from dailyActivity
where TotalMinutes != 1440
----total minutes column has been added to the table as sum of all tracked minutes; it has been found that there are 462 lines where total minutes not equal to 1440

select count(distinct id)
from dailyActivity
----There are 33 indivdual records in daily activity worksheet

select count(distinct id)
from heartrate_seconds
----There are 14 individual records for heartrate in seconds

select count(distinct id)
from sleepDay
----There are 24 individual records for sleep

alter table dailyactivity add weekday as datename(weekday, activitydate)


select count(distinct id)
from met
33 individual records in MET

select hourlycalories.id, hourlycalories.activityhour, calories, totalintensity, steptotal
from hourlycalories
join hourlyintensities 
on
hourlycalories.id = hourlyintensities.id and hourlycalories.activityhour = hourlyintensities.activityhour
join hourlysteps
on hourlyintensities.id = hourlysteps.id and hourlyintensities.activityhour = hourlysteps.activityhour

alter table met add metdate as cast(activityminute as date)

with metrecords as
(select id, metdate, sum(mets) as totalmets
from met
group by id, metdate),

stats as
(select id, avg(cast(veryactiveminutes as int)+cast(fairlyactiveminutes as int)) as time,
case when avg(cast(veryactiveminutes as int)+cast(fairlyactiveminutes as int)) > 60 then 'active' else 'notactive' end as status
from dailyActivity
group by id)

select dailyActivity.id, ActivityDate, weekday, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes, 
totalsteps, totaldistance, veryactivedistance, ModeratelyActiveDistance, LightActiveDistance, SedentaryActiveDistance, Calories, status,
TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed, totalmets

from dailyActivity
left outer join SleepDay
on dailyActivity.id = SleepDay.id and dailyActivity.ActivityDate = cast(SleepDay as date)
join metrecords
on metrecords.id = dailyActivity.id and dailyActivity.ActivityDate = metrecords.metdate
join stats
on dailyActivity.id = stats.id




