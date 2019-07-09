with overall_avg_duration as(
	select
		avg(tripduration) as tripduration
	from da_pronto.trip
)

select
	cast(starttime as date),
	avg(a.tripduration) as avg_tripduration,
	b.tripduration,
	avg(a.tripduration) -b.tripduration as overall_avg_tripduration
	
	
from da_pronto.trip a

Inner join overall_avg_duration b on True

group by
	1,3