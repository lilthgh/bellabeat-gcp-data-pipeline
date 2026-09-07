create or replace view `project-a672b30f-4297-4213-ac9.raw_data.view2` As
SELECT
    COUNT(*) AS total_users_num,
    COUNTIF(average_steps BETWEEN 8000 AND 12000) AS goal_completed_users_num
FROM (
    SELECT
        Id,
        AVG(TotalSteps) AS average_steps
    FROM raw_data.daily_activity
    GROUP BY Id
);
/*
WITH user_average AS (
    SELECT
        Id,
        AVG(TotalSteps) AS average_steps
    FROM raw_data.daily_activity
    GROUP BY Id
)

SELECT
    COUNT(*) AS total_users_num,
    COUNTIF(average_steps BETWEEN 8000 AND 12000)
        AS goal_completed_users_num
FROM user_average;
*/
