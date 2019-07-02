select *
from da_sales.products
limit 50

select *
from da_sales.customers
limit 50

select *
from da_sales.purchases
limit 50

select
	custid,
	prodid,
	quantity,
	date
	
from da_sales.purchases p

limit 100


select
	custid,
	prodid,
	quantity,
	date,
	name
	
from da_sales.purchases p

join
	da_sales.customers c
	on p.custid = c.id

limit 100

	