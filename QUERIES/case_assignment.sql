SELECT *
FROM da_pronto.trip
limit 100

select starttime,
	from_station_name,
	to_station_name,
	tripduration,
	cast(starttime as date)
from da_pronto.trip
where
	cast(starttime as date) = '2015-07-01'
limit 100

select starttime,
	from_station_name,
	to_station_name,
	tripduration,
	case
		when from_station_name = to_station_name then 'MATCH'
		Else 'NOT MATCH'
		end as stations_match
from da_pronto.trip
where
	cast(starttime as date) = '2015-07-01'
limit 10

select *
from public.airline_on_time_west_coast
limit 10

select flight_date,
	carrier,
	avg(arrival_delay) as avg_arrival_delay
from public.airline_on_time_west_coast
where
	flight_date > '2014-12-01' and flight_date < '2015-01-01'
group by flight_date,carrier
limit 100

select flight_date,
	carrier,
	avg(arrival_delay) as avg_arrival_delay,
	origin_city_name,
	case
		when 
			right(origin_city_name,2) in('NY','CO','CA','WA','AZ')then TRUE
			else FALSE
			end
from public.airline_on_time_west_coast
where
	flight_date > '2014-12-01' and flight_date < '2015-01-01'
group by flight_date,carrier,origin_city_name
limit 100

		