select
	name as city_name,
	population
from da_world.city
limit 100;

select
	c.name as city_name,
	c.population,
	t.name,
	t.continent
	
from da_world.city c

inner join da_world.country t
	on t.code = c.countrycode


limit 100;



select
	c.name as city_name,
	c.population,
	t.name,
	t.continent,
	c.countrycode
	
from da_world.city c

inner join da_world.country t
	on t.code = c.countrycode

where
	t.continent = 'Africa'

limit 100;

select
	c.name as city_name,
	c.population,
	t.name as country_name,
	t.continent,
	c.countrycode
	
from da_world.city c

inner join da_world.country t
	on t.code = c.countrycode

where
	(c.population > 1000000 and
	t.continent = 'Africa')

limit 100;