CREATE OR REPLACE VIEW `project-a672b30f-4297-4213-ac9.silver_data.view1` AS

SELECT
  Id,
  AVG(TotalSteps) AS average_steps,
  AVG(TotalDistance) AS average_distance,
  AVG(Calories) AS average_calories
FROM `project-a672b30f-4297-4213-ac9.raw_data.daily_activity`
GROUP BY Id;



