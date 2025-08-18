# Write your MySQL query statement below
WITH CTE AS (
    SELECT machine_id,process_id,timestamp,LAG(timestamp,1) OVER(PARTITION BY machine_id,process_id ORDER BY timestamp) AS start_time
    FROM Activity
),
CTE2 AS(
    SELECT machine_id,ROUND(AVG(timestamp-start_time),3) AS processing_time  
    FROM CTE
    WHERE start_time IS NOT NULL
    GROUP BY machine_id 
)
SELECT *
FROM CTE2


