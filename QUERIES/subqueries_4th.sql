SELECT company, country 
FROM da_auto.auto_2014
UNION
SELECT company, country
FROM da_auto.auto_2015
UNION
SELECT company, country 
FROM da_auto.auto_2016

with combined_years as (
	select company,country 
	from da_auto.auto_2014
	union
	SELECT company, country
	FROM da_auto.auto_2015
	UNION
	SELECT company, country 
	FROM da_auto.auto_2016)

select company,
	country,
	COALESCE(w.continent,'NO VALUE')
	
from combined_years
left join da_world.country w
	on w.name = combined_years.country	
	
	
select *
from da_world.country
limit 100
	