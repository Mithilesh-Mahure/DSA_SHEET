# Write your MySQL query statement below
WITH CTE AS (
    SELECT 
        id,
        num,
        LEAD(num,1) OVER(ORDER BY id) AS next1,
        LEAD(num,2) OVER(ORDER BY id) AS next2
    FROM logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM CTE
WHERE next1=num AND next2=num;