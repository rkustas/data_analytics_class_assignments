select *
from da_pronto.trip
limit 15

with bike_id as (
select bikeid,
	min(tripduration),
	max(tripduration),
	avg(tripduration) as avg_td
	
from da_pronto.trip
WHERE mod(RIGHT(bikeid,5)::INTEGER,100)<=20
group by bikeid
),

overall_avg_td as (
select
	avg(tripduration) as o_avg_trip
from da_pronto.trip
	join bike_id bi on bi.bikeid = da_pronto.trip.bikeid 
)

select bike_id.*,
	bike_id.avg_td- oa.o_avg_trip as diff_from_avg_sample
from bike_id
	join overall_avg_td oa on true