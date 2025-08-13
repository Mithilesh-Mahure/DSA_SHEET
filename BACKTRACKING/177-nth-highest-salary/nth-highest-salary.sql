CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
    SELECT DISTINCT Salary FROM 
    (SELECT Salary,DENSE_RANK() OVER(ORDER BY salary DESC) as rnk
    FROM Employee 
    ) AS sp
    WHERE rnk=N
  );
END