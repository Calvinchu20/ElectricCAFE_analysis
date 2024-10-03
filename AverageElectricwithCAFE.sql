use electricvehicles;
create view average_clean_fuel_per_vehicle_type as 
select electric_vehicle_type, count(Clean_Alternative_fuel_eligibility_CAFE_id) /  (select count(Clean_Alternative_fuel_eligibility_CAFE_id)  from electric_type) as  average_clean_fuel
from electric_type
where Clean_Alternative_fuel_eligibility_CAFE_id = 1
group by electric_vehicle_type;
