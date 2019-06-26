select count(*)
from da_pronto.trip

select count(*), sum(tripduration)
from da_pronto.trip

select to_station_name, count(*), sum(tripduration)
from da_pronto.trip
group by to_station_name
order by sum(tripduration) asc