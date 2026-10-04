-- CTE 1: Definimos el mes de registro (cohorte) para cada usuario
WITH cohort AS (
  SELECT 
    user_id,
    TO_CHAR(DATE_TRUNC('month', MIN(signup_date)), 'YYYY-MM') AS cohort
  FROM mercadolibre_retention
  GROUP BY user_id
),

-- CTE 2: Cruzamos la actividad diaria con la cohorte del usuario
activity AS (
  SELECT 
    r.user_id,
    c.cohort,
    r.day_after_signup,
    r.active
  FROM mercadolibre_retention r
  LEFT JOIN cohort c ON r.user_id = c.user_id
  WHERE r.activity_date BETWEEN '2025-01-01' AND '2025-08-31'
)

-- SELECT FINAL: Calculamos los porcentajes de retención por cohorte
SELECT 
  cohort,
  -- Retención al Día 7
  ROUND(COUNT(DISTINCT CASE WHEN day_after_signup >= 7 AND active = 1 THEN user_id END) * 100.0 / NULLIF(COUNT(DISTINCT user_id), 0), 1) AS retention_d7_pct,
  -- Retención al Día 14
  ROUND(COUNT(DISTINCT CASE WHEN day_after_signup >= 14 AND active = 1 THEN user_id END) * 100.0 / NULLIF(COUNT(DISTINCT user_id), 0), 1) AS retention_d14_pct,
  -- Retención al Día 21
  ROUND(COUNT(DISTINCT CASE WHEN day_after_signup >= 21 AND active = 1 THEN user_id END) * 100.0 / NULLIF(COUNT(DISTINCT user_id), 0), 1) AS retention_d21_pct,
  -- Retención al Día 28
  ROUND(COUNT(DISTINCT CASE WHEN day_after_signup >= 28 AND active = 1 THEN user_id END) * 100.0 / NULLIF(COUNT(DISTINCT user_id), 0), 1) AS retention_d28_pct
FROM activity
GROUP BY cohort
ORDER BY cohort;
