# Write your MySQL query statement below
SELECT project_id, ROUND(AVG(experience_years),2) AS average_years
FROM Project AS pr
JOIN Employee AS emp
ON pr.employee_id=emp.Employee_id
GROUP BY project_id