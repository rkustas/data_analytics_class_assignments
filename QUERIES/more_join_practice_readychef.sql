SELECT
	event,
	count(event)
from da_readychef.events
group by event
limit 100;

SELECT
	event,
	count(event),
	e.meal_id,
	m.type
from da_readychef.events e

left join da_readychef.meals m
	on e.meal_id = m.meal_id

group by event, e.meal_id,m.type
limit 100;

SELECT
	event,
	count(event),
	e.meal_id,
	m.type,
	e.userid
from da_readychef.events e

left join da_readychef.meals m
	on e.meal_id = m.meal_id
left join da_readychef.referrals r
	on e.userid = r.referred
	
where r.referred is null

group by event, e.meal_id,m.type,e.userid
limit 100;

select
	e.event,
	m.meal_id
from da_readychef.events e
left join da_readychef.meals m
	on e.meal_id = m.meal_id
where e.meal_id is null
	
limit 100;

select
	e.event,
	m.meal_id
from da_readychef.meals m
left join da_readychef.events e
	on e.meal_id = m.meal_id
where e.event is null
	
limit 100;