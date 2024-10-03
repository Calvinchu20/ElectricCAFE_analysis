use electricvehicles;
create view  total_electric_vehicle_per_city as
select model, make, count(city) as total_count
from vehicle_info
join vehicles
on vehicle_info.vehicle_id = vehicles.vehicle_info_vehicle_id
join vehicle_address
on vehicles.Vehicle_address_address_id = vehicle_address.address_id
group by model, make
order by total_count desc