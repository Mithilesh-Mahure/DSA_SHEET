# Write your MySQL query statement below
SELECT emp.name,bs.bonus 
FROM Employee as emp
LEFT JOIN Bonus as bs 
ON emp.empID=bs.empID
WHERE bonus < 1000 OR Bonus is NULL;