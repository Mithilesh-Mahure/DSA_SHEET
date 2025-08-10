SELECT emp.name , bon.bonus
FROM Employee as emp
LEFT JOIN Bonus as bon
ON emp.empId=bon.empId
WHERE bonus IS NULL OR bonus<1000;