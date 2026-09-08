CREATE OR REPLACE VIEW `project-a672b30f-4297-4213-ac9.raw_data.view1` As
select
Id,
avg(TotalSteps) as average_steps
,avg(TotalDistance) as average_distance,
avg(Calories) as average_calories
from
`project-a672b30f-4297-4213-ac9.raw_data.daily_activity`
GROUP BY Id;
