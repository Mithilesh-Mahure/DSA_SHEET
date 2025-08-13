# Write your MySQL query statement below

SELECT Department , Employee , Salary
FROM
(
    SELECT 
        d.name AS Department, 
        e.name AS Employee, 
        e.salary AS Salary,
        DENSE_RANK() OVER(PARTITION BY d.name ORDER BY Salary DESC) AS rnk
    FROM Employee AS e
    JOIN Department AS d
    ON e.departmentid=d.id
) AS rnk_tbl
WHERE rnk<=3;