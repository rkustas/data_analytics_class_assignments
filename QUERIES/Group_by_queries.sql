SELECT distinct station_id as station, install_date as date
from da_pronto.station
Order by station_id desc
limit 10

select distinct decommission_date as date, name
from da_pronto.station
Order by decommission_date ASC
limit 15