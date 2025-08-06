SELECT emp.name,bs.bonus 
FROM Employee as emp
LEFT JOIN Bonus as bs 
ON emp.empId=bs.empId
WHERE bs.bonus<1000 OR bs.bonus is NULL;