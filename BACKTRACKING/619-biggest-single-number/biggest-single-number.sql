# Write your MySQL query statement below

WITH CTE AS (
    SELECT num,COUNT(num) AS cnt
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num)=1
)

SELECT MAX(num) AS num FROM CTE 
