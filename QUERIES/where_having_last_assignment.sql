select 
	*
from da_weather.us_weather_anomalies
limit 100;


select
	min(min_temp) as minT,
	station_name

from da_weather.us_weather_anomalies

where
	date_ymd between '2013-01-01' and '2013-12-31'
	
group by
	station_name
	
order by
	station_name ASC

limit
	100;


select
	min(min_temp) as minT,
	station_name

from da_weather.us_weather_anomalies

where
	date_ymd between '2013-01-01' and '2013-12-31'
	and latitude > 36
	
group by
	station_name
	
order by
	station_name ASC

limit
	100;
	
	

select
	min(min_temp) as minT,
	station_name

from da_weather.us_weather_anomalies

where
	date_ymd between '2013-01-01' and '2013-12-31'
	and latitude > 36
	
group by
	station_name
	
having
	min(min_temp)<=-10
	
order by
	station_name ASC

limit
	100;
	
	
select
	min((min_temp*(9/5)+32)) as minT,
	station_name

from da_weather.us_weather_anomalies

where
	date_ymd between '2013-01-01' and '2013-12-31'
	and latitude > 36
	
group by
	station_name
	
having
	min((min_temp*(9/5)+32))<0
	
order by
	station_name ASC

limit
	100;