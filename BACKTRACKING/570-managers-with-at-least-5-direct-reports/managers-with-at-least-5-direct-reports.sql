# Write your MySQL query statement below
WITH CTE AS(
    SELECT mgr.name
    FROM Employee AS mgr
    INNER JOIN Employee AS emp
    WHERE mgr.id=emp.managerId
    GROUP BY mgr.id
    HAVING COUNT(*)>=5
)
SELECT name FROM CTE