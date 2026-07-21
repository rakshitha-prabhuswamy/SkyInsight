use skyinsight;
select count(*) as total_records from airline_operations;
select count(distinct airline) as total_airlines from airline_operations;
SELECT COUNT(DISTINCT Airport) AS Total_Airports FROM airline_operations;
select distinct year from airline_operations;
select year, sum(total_flights) as total_flights from airline_operations group by year;

select airline, sum(total_flights) as total_flights from airline_operations group by airline order by total_flights desc limit 10;
select airline, sum(delayed_flights) as delayed_flights from airline_operations group by airline order by delayed_flights desc;
SELECT Airline, SUM(Cancelled_Flights) AS Cancelled_Flights FROM airline_operations GROUP BY Airline ORDER BY Cancelled_Flights DESC;
select airline, round(avg(on_time_percentage),2) as avg_on_time from airline_operations group by airline order by avg_on_time desc;
select airline, round(avg(delay_percentage),2) as avg_delay from airline_operations group by airline order by avg_delay desc;

select airport, sum(total_flights) as flights from airline_operations group by airport order by flights desc limit 10;
select airport, sum(total_delay_minutes) as delay_minutes from airline_operations group by airport order by delay_minutes desc limit 10;
select airport, round(avg(on_time_percentage),2) as on_time from airline_operations group by airport order by on_time desc limit 10;

select sum(carrier_delay_minutes) as carrier_delay from airline_operations;
select sum(weather_delay_minutes)as weather_delay from airline_operations;
select sum(nas_delay_minutes) as nas_delay from airline_operations;
select sum(security_delay_minutes) as security_delay from airline_operations;
select sum(late_aircraft_delay_minutes) as late_aircraft_delay from airline_operations;

select airline, sum(total_flights) as flights, rank() over(order by sum(total_flights) desc) as airline_rank from airline_operations group by airline;
select delay_severity, count(*) as total from airline_operations group by delay_severity;
select airline, sum(total_flights) as flights from airline_operations group by airline having flights > ( select avg(total_flights) from airline_operations) order by flights desc;
select year, round(avg(average_delay_per_flight),2)as avg_delay from airline_operations group by year;
