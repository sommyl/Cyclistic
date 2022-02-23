with geo(start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id)
as
(select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202102-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202103-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202104-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202105-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202106-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202107-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202108-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202109-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202110-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202111-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202112-divvy-tripdata]
union
select start_lat, start_lng, end_lat, end_lng, start_station_name, end_station_name, ride_id
from dbo.[202201-divvy-tripdata])



select substring(test.ride_id,1,1) as id, 
rideable_type,
member_casual,
started_at,
datediff(minute, started_at, ended_at) ride_length,
round(start_lat,3) lat1,
round(start_lng,3) lng1,
round(end_lat,3) lat2,
round(end_lng,3) lng2,
start_station_name,
end_station_name,
day_of_week
from test
join geo
on test.ride_id = geo.ride_id
where end_lat is not null and end_lng is not null 
order by ride_length




