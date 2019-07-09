select
	"rank",
	company
from da_auto.auto_2015

where "rank" <=20

union

select
	"rank",
	company
from da_auto.auto_2016

where "rank" <=20

union

select
	"rank",
	company
from da_auto.auto_2014

where "rank" <=20;