select
	'2015' as "Year",
	rank,
	country,
	company,
	cast(vehicles as integer) as total,
	cast(null as integer) as lcv,
	cast(null as integer) as hcv,
	cast(null AS TEXT)as buses
from da_auto.auto_2015

union all

select 
	'2016' as "Year",
	rank,
	country,
	company,
	cast(vehicles as integer) as total,
	cast(null as integer) as lcv,
	cast(null as integer) as hcv,
	cast(null AS TEXT)as buses
from da_auto.auto_2016

union all

select 
	'2014' as "Year",
	rank,
	country,
	company,
	total,
	lcv,
	hcv,
	buses
from da_auto.auto_2014;