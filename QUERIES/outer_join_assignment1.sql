select
	distinct cu.id
from da_sales.customers cu
left join da_sales.purchases p
	on cu.id = p.custid;