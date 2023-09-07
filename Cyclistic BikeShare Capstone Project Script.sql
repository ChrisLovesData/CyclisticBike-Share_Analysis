-- Creating Tables for the past 12 months of trip data
CREATE TABLE TripData_202207
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT,
ride_length TIME,
day_of_week TEXT
);

SELECT*FROM TripData_202207;

CREATE TABLE TripData_202208
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT,
ride_length TIME,
day_of_week TEXT
);

SELECT * FROM TripData_202208;

CREATE TABLE TripData_202209
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT * FROM TripData_202209;

CREATE TABLE TripData_202210
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT * FROM TripData_202210;

CREATE TABLE TripData_202211
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT * FROM TripData_202211;

CREATE TABLE TripData_202212
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT * FROM TripData_202212;

CREATE TABLE TripData_202301
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT * FROM TripData_202301;

CREATE TABLE TripData_202302
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT * FROM TripData_202302;

CREATE TABLE TripData_202303
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT*FROM TripData_202303;

CREATE TABLE TripData_202304
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT*FROM TripData_202304;

CREATE TABLE TripData_202305
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT * FROM TripData_202305;

CREATE TABLE TripData_202306
(
source_name TEXT,
ride_id TEXT,
rideable_type TEXT,
started_at TIME,
ended_at TIME,
start_station_name TEXT,
start_station_id TEXT,
end_station_name TEXT,
end_station_id TEXT,
start_lat TEXT,
start_lng TEXT,
end_lat TEXT,
end_lng TEXT,
member_casual TEXT
);

SELECT *FROM TripData_202306;

--Combining all 12 tables of trip data to have one large dataset to work with
CREATE TABLE TripData_12Months AS 
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202207 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202208 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202209 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202210 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202211
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202212 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202301 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202302 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202303 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202304 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202305 
UNION
SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual  
FROM TripData_202306 ;

--Combined 12 month data
SELECT *
FROM TripData_12Months;

SELECT 
	COUNT(*) AS TotalTrips_InPast_Year
FROM TripData_12Months;
-- 5,779,444 Total Trips in past year

-- Explores the breakdown of trips by casual riders and member riders
SELECT 
	member_casual, 
	COUNT(member_casual) AS total_trips
FROM TripData_12Months
GROUP BY (member_casual);

-- Lets calculate the ride time for each ride
SELECT
  SUBSTR(started_at, 12, 8) AS start_time,
  SUBSTR(ended_at, 12, 8) AS end_time,
  strftime('%H:%M:%S', CAST(strftime('%s', ended_at) AS INTEGER) - CAST(strftime('%s', started_at) AS INTEGER), 'unixepoch') AS ride_time,
  member_casual 
FROM
  TripData_12Months;

 -- Lets create a subquery that allows us to see average ride time
SELECT
  strftime('%H:%M:%S', AVG(strftime('%s', ride_time)), 'unixepoch') AS average_ride_time
FROM (
  SELECT
    strftime('%H:%M:%S', CAST(strftime('%s', ended_at) AS INTEGER) - CAST(strftime('%s', started_at) AS INTEGER), 'unixepoch') AS ride_time
  FROM
    TripData_12Months
   ) AS ride_times;
-- AVG ride time is 15:34

-- Calculates average ride time based off of whether you are a member or not
SELECT
  member_casual, strftime('%H:%M:%S', AVG(strftime('%s', ride_time)), 'unixepoch') AS average_ride_time
FROM (
  SELECT
    member_casual, strftime('%H:%M:%S', CAST(strftime('%s', ended_at) AS INTEGER) - CAST(strftime('%s', started_at) AS INTEGER), 'unixepoch') AS ride_time
  FROM
    TripData_12Months
) 
AS ride_times
GROUP BY member_casual ;
-- Casual avg ride time: 21:05, Member avg ride time: 12:05

-- Explores the breakdown of bike type and whether they are a member
SELECT 
	rideable_type,
	member_casual, 
	COUNT(rideable_type) AS total_trips
FROM TripData_12Months
GROUP BY rideable_type, member_casual
ORDER BY total_trips DESC;

-- Top 100 start stations with the most trips to help identify where to target ads
SELECT 
	start_station_name, 
	start_station_id,
	member_casual, 
	COUNT(start_station_name)AS total_trips, 
	start_lat, 
	start_lng
FROM TripData_12Months 
GROUP BY start_station_name
ORDER BY total_trips DESC
LIMIT 100;

-- Top 100 end stations with the most trips to help identify where to target ads
SELECT 
	end_station_name, 
	end_station_id, 
	member_casual,
	COUNT(end_station_name)AS total_trips, 
	end_lat, 
	end_lng
FROM TripData_12Months
GROUP BY end_station_name
ORDER BY total_trips DESC
LIMIT 100;

-- Extracts weekday number and name and orders which days are the busiest
SELECT 
	member_casual, 
	CASE strftime('%w',started_at)
		WHEN '0' THEN 'Sunday'
		WHEN '1' THEN 'Monday'
		WHEN '2' THEN 'Tuesday'
		WHEN '3' THEN 'Wednesday'
		WHEN '4' THEN 'Thursday'
		WHEN '5' THEN 'Friday'
		WHEN '6' THEN 'Saturday'
		ELSE 'Unknown'
	END AS weekday_name,
	COUNT(started_at) AS total_trips
FROM TripData_12Months
GROUP BY weekday_name, member_casual 
ORDER BY total_trips DESC; 

-- Queries the relationship between month and member status and total trips
SELECT 
	CASE strftime('%m',started_at)
		WHEN '01' THEN 'January'
		WHEN '02' THEN 'February'
		WHEN '03' THEN 'March'
		WHEN '04' THEN 'April'
		WHEN '05' THEN 'May'
		WHEN '06' THEN 'June'
		WHEN '07' THEN 'July'
		WHEN '08' THEN 'August'
		WHEN '09' THEN 'September'
		WHEN '10' THEN 'October'
		WHEN '11' THEN 'November'
		WHEN '12' THEN 'December' END AS month_name,
	member_casual,
	COUNT(started_at)AS total_trips
FROM TripData_12Months
GROUP BY month_name, member_casual;

-- Shows the monthly relationship between members and casual riders
SELECT strftime('%m',started_at)AS month_number,
CASE strftime('%m',started_at)
		WHEN '01' THEN 'January'
		WHEN '02' THEN 'February'
		WHEN '03' THEN 'March'
		WHEN '04' THEN 'April'
		WHEN '05' THEN 'May'
		WHEN '06' THEN 'June'
		WHEN '07' THEN 'July'
		WHEN '08' THEN 'August'
		WHEN '09' THEN 'September'
		WHEN '10' THEN 'October'
		WHEN '11' THEN 'November'
		WHEN '12' THEN 'December' END AS month_name,
member_casual,COUNT(started_at)AS total_trips
FROM TripData_12Months
GROUP BY month_number, member_casual;