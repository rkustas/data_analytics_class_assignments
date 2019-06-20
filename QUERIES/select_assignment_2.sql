SELECT COUNT(*)
FROM da_pronto.trip

SELECT from_station_name,to_station_name
from da_pronto.trip
limit 1000

select distinct from_station_name
from da_pronto.trip

select from_station_name, to_station_name
from da_pronto.trip
order by from_station_name desc, to_station_name desc

select from_station_name, count(*)
from da_pronto.trip
group by from_station_name
order by count(*) desc

select from_station_name, gender, tripduration
from da_pronto.trip
order by tripduration asc
limit 600

