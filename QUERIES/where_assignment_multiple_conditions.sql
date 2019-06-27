select
	origin_city_name,
	dest_city_name,
	carrier,
	avg(arrival_delay),
	min(arrival_delay),
	max(arrival_delay)

from public.airline_on_time_west_coast

group by
	origin_city_name,
	dest_city_name,
	carrier
	
limit
	1000;
	
select
	origin_city_name,
	dest_city_name,
	carrier,
	avg(arrival_delay),
	min(arrival_delay),
	max(arrival_delay)

from public.airline_on_time_west_coast

where
	origin in ('DEN','LAX','SFO','SEA','PHX')

group by
	origin_city_name,
	dest_city_name,
	carrier
	
limit
	100;
	
select
	origin,
	dest_city_name,
	carrier,
	avg(arrival_delay),
	min(arrival_delay),
	max(arrival_delay)

from public.airline_on_time_west_coast

where
	origin in ('DEN','LAX','SFO','SEA','PHX')
	and (dest_city_name like ('%CA')
	or dest_city_name like ('%NY'))

group by
	origin,
	dest_city_name,
	carrier
	
limit
	100;
