select flight_date, flight_num,carrier, origin
from "public".airline_on_time_west_coast
limit 1000

select flight_date, flight_num,carrier, origin
from "public".airline_on_time_west_coast
where origin = 'SEA'
limit 1000

SELECT flight_date,carrier,avg(arrival_delay)
from "public".airline_on_time_west_coast
where flight_date between '2014/12/01' and '2014/12/31'
group by flight_date,carrier
limit 1000