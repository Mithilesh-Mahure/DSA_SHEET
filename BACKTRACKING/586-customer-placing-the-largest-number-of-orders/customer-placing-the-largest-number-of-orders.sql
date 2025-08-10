# Write your MySQL query statement below
WITH CTE AS
(SELECT customer_number, COUNT(customer_number) AS nu
FROM Orders
GROUP BY customer_number)

SELECT customer_number
FROM CTE 
WHERE nu=(SELECT MAX(nu) FROM CTE)