WITH CTE AS(
    SELECT emp.name 
    FROM Employee as emp
    JOIN Employee as mgr
    ON emp.managerId=mgr.id
    WHERE mgr.salary<emp.salary
)
SELECT name AS Employee
FROM CTE

;
 