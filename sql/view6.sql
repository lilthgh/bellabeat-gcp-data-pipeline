create or replace view `project-a672b30f-4297-4213-ac9.raw_data.view6` As
SELECT
  EXTRACT(DAYOFWEEK FROM PARSE_DATE('%m/%d/%Y', SPLIT(SleepDay, ' ')[OFFSET(0)])) AS day,

  FORMAT_DATE(
    '%A',
    PARSE_DATE('%m/%d/%Y', SPLIT(SleepDay, ' ')[OFFSET(0)])
  ) AS day_of_week,

  AVG(TotalMinutesAsleep) AS avg_total_min_asleep,

  AVG(TotalMinutesAsleep) / 60 AS avg_total_hr_asleep

FROM `project-a672b30f-4297-4213-ac9.raw_data.sleep_day`

GROUP BY day, day_of_week

ORDER BY avg_total_min_asleep DESC;
