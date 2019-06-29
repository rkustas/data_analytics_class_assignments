select *
from da_pronto.trip
limit 100

select
	starttime,
	from_station_name,
	from_station_id,
	to_station_name,
	extract('hour' from starttime) as hour_starttime,
	date_part('minute', starttime) as minute_starttime,
	from_station_id ||'/'|| from_station_name as from_station,
from da_pronto.trip
limit 100

select
	to_station_name,
	from_station_name,
	avg(tripduration)/3600 as avg_trip_duration_hours,
	cast(date_trunc('year', starttime) as date) as date_trunc_hours
from da_pronto.trip
group by from_station_name,to_station_name,starttime
order by avg(tripduration) desc
limit 100