Create or replace view `project-a672b30f-4297-4213-ac9.raw_data.view1` As
select
avg(TotalSteps) as average_steps
,avg(TotalDistance) as average_distance,
avg(Calories) as average_calories
from
`project-a672b30f-4297-4213-ac9.raw_data.daily_activity`
