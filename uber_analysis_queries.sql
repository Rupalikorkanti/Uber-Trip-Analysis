create database uber_analysis;
use uber_analysis;
drop table uber_trips;
show tables;
CREATE TABLE uber_trips (
    dispatching_base_number VARCHAR(10),
    date DATE,
    active_vehicles INT,
    trips INT
);
RENAME TABLE `uber-jan-feb-foil` TO uber_trips;

SELECT * FROM uber_trips ;

SELECT date, SUM(trips) AS total_trips
FROM uber_trips
GROUP BY date
ORDER BY date;

SELECT dispatching_base_number,
       SUM(trips) AS total_trips
FROM uber_trips
GROUP BY dispatching_base_number
ORDER BY total_trips DESC;

SELECT dispatching_base_number,
       ROUND(AVG(trips / active_vehicles), 2) AS trips_per_vehicle
FROM uber_trips
GROUP BY dispatching_base_number
ORDER BY trips_per_vehicle DESC;

SELECT date, SUM(trips) AS total_trips
FROM uber_trips
GROUP BY date
ORDER BY total_trips DESC
LIMIT 1;




