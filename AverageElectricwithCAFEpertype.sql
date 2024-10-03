use electricvehicles;
create view Average_clean_fuel as 
select count(electric_vehicle_type) / (select count(electric_vehicle_type) from electric_type) as Average_Clean_Fuel
from electric_type
where Clean_Alternative_fuel_eligibility_CAFE_id = 1