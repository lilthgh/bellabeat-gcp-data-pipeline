create or replace view `project-a672b30f-4297-4213-ac9.raw_data.view4` As


SELECT
    EXTRACT(
        HOUR FROM PARSE_DATETIME('%m/%d/%Y %I:%M:%S %p', ActivityHour)
    ) AS hour_of_day,
    AVG(StepTotal) AS average_walk
FROM `project-a672b30f-4297-4213-ac9.raw_data.hourly_steps`
GROUP BY hour_of_day
ORDER BY average_walk DESC;
