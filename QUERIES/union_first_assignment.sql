select *
from da_auto.auto_2015

union all

select *
from da_auto.auto_2016;

select *
from da_auto.auto_2015

union

select *
from da_auto.auto_2016;

select 
	company
from da_auto.auto_2015

union

select 
	company
from da_auto.auto_2016;