WITH CTE AS (
    SELECT 
        *,
        LAG(temperature) OVER (ORDER BY recordDate) AS prev_temp,
        LAG(recordDate) OVER (ORDER BY recordDate) AS prev_date
    FROM Weather
)
SELECT id
FROM CTE
WHERE prev_temp IS NOT NULL
  AND temperature > prev_temp
  AND DATEDIFF(recordDate, prev_date) = 1;