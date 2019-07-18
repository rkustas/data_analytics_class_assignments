/* Verify if inner join is correct*/
SELECT
	COUNT(DISTINCT countrycode)
from da_world.city

SELECT
	COUNT(DISTINCT code)
from da_world.country

/* Checking the data*/

Select *

From da_world.city c
limit 100

Select *

From da_world.country c
limit 100

select countrycode,
	avg(population)
from da_world.city
where countrycode = 'AFG'
group by 1