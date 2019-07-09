select 
	cast(starttime as date),
	avg(tripduration)
from da_pronto.trip

group by 1
order by 1 asc


select
	cast(starttime as date),
	avg(tripduration) as avg_tripduration,
	(select
		avg(tripduration) as avg_tripduration from da_pronto.trip) as overall_avg_tripduration
from da_pronto.trip

group by 1
order by 1 asc

limit 10;

select
	cast(starttime as date),
	avg(tripduration) as avg_tripduration,
	(select
		avg(tripduration) as avg_tripduration from da_pronto.trip) as overall_avg_tripduration,
	avg(tripduration) -(select avg(tripduration) as avg_tripduration from da_pronto.trip) as overall_avg_tripduration
from da_pronto.trip

group by 1
order by 1 asc

limit 10;