create or replace view `project-a672b30f-4297-4213-ac9.raw_data.view5` As


WITH user_sleep AS (
    SELECT
        Id,
        AVG(TotalMinutesAsleep) AS avg_sleep
    FROM `project-a672b30f-4297-4213-ac9.raw_data.sleep_day`
    GROUP BY Id
)

SELECT
    CASE
        WHEN avg_sleep > 540 THEN 'Oversleeping'
        WHEN avg_sleep BETWEEN 420 AND 540 THEN 'Healthy Sleep'
        WHEN avg_sleep BETWEEN 210 AND 420 THEN 'Unhealthy Sleep'
        WHEN avg_sleep < 210 THEN 'Nap'
    END AS sleep_type,

    COUNT(*) AS no_of_users

FROM user_sleep

GROUP BY sleep_type;
