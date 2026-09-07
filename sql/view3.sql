create or replace view `project-a672b30f-4297-4213-ac9.raw_data.view3` As

SELECT
    EXTRACT(DAYOFWEEK FROM ActivityDate) AS day,
    FORMAT_DATE('%A', ActivityDate) AS day_of_week,
    AVG(TotalSteps) AS avg_total_step,
    COUNT(*) AS no_of_count
FROM `project-a672b30f-4297-4213-ac9.raw_data.daily_activity`
WHERE TotalSteps BETWEEN 8000 AND 12000
GROUP BY
    day,
    day_of_week
ORDER BY
    avg_total_step DESC;
