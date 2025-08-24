# Write your MySQL query statement below
SELECT empu.unique_id,emp.name
FROM Employees AS emp 
LEFT JOIN EmployeeUNI AS empu
ON emp.id = empu.id
