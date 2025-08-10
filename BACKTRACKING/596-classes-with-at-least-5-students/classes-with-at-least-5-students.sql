# Write your MySQL query statement below
WITH CTE AS (
    SELECT class,COUNT(class) as cnt
    FROM Courses
    GROUP BY class
)

SELECT class FROM CTE 
WHERE cnt>=5