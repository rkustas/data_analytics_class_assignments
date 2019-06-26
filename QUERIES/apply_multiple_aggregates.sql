select unique_carrier, count(*)
from public.airline_on_time_west_coast
group by unique_carrier
order by count(*) asc

select unique_carrier, sum(arrival_delay)
from public.airline_on_time_west_coast
group by unique_carrier
order by sum(arrival_delay) asc

select unique_carrier, avg(arrival_delay)
from public.airline_on_time_west_coast
group by unique_carrier
order by avg(arrival_delay) desc

select flight_date,flight_num,unique_carrier,min(arrival_delay)
from public.airline_on_time_west_coast
group by flight_date,flight_num,unique_carrier
order by min(arrival_delay) asc
limit 1

select origin,unique_carrier,avg(arrival_delay),min(arrival_delay),max(arrival_delay)
from public.airline_on_time_west_coast
group by origin, unique_carrier
order by origin asc, avg(arrival_delay) asc