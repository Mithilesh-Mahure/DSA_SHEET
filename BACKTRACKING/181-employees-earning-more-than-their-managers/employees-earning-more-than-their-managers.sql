SELECT e1.name as Employee FROM employee as e1 JOIN employee as e2 
ON e1.managerId=e2.id
WHERE e1.salary>e2.salary