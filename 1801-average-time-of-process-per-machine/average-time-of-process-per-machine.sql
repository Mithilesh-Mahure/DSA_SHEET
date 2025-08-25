# Write your MySQL query statement below
WITH CTE AS(
    SELECT 
        machine_id,
        process_id,
        SUM(CASE WHEN activity_type="start" THEN -1*timestamp ELSE timestamp END) AS process_time
    FROM Activity
    GROUP BY machine_id ,process_id
)


SELECT machine_id,ROUND(AVG(process_time),3) AS processing_time 
FROM CTE
GROUP BY machine_id
