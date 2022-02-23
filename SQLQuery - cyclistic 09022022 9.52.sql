Create table test
(ride_id varchar(max),
rideable_type varchar(max),
started_at datetime2,
ended_at datetime2,
start_station_name varchar(max),
start_station_id varchar(max),
end_station_name varchar(max),
end_station_id varchar(max),
start_lat float,
start_lng float,
end_lat float,
end_lng float,
member_casual varchar(max)
)

delete
from test
where end_lat is null 

4,754 null for end_lng & end_lat (rows deleted)


select count(start_station_name)
from test
where start_station_id is null

698,444 null for start_station_name
746,820 null for end_station_name

Insert into test
SELECT *
FROM dbo.[202102-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202103-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202104-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202105-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202106-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202107-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202108-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202109-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202110-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202111-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202112-divvy-tripdata]
union all 
SELECT *
FROM dbo.[202201-divvy-tripdata]

alter table test
add day_of_week as DATENAME(WEEKDAY,started_at)

delete test
where datediff(minute, started_at, ended_at) < 10
2,207,583 rows deleted for rides less than 10 minutes







