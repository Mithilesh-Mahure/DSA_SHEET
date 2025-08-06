SELECT 
    emp.name as name, 
    bs.bonus as bonus
FROM Employee as emp
LEFT JOIN Bonus as bs
ON emp.empId=bs.empId
WHERE bonus<1000 OR bonus IS NULL;