use electricvehicles;
create view model_make_vehicle_total_CAFE as
select model, make, count(Clean_Alternative_fuel_eligibility_CAFE_id) as total_clean_fuel
from vehicle_info
join vehicles
on vehicle_info.vehicle_id = vehicles.vehicle_info_vehicle_id
join electric_type
on vehicles.Electric_utility_Electric_id = electric_type.Electric_type_id
where Clean_Alternative_fuel_eligibility_CAFE_id = 1
group  by model,make
order by total_clean_fuel desc
