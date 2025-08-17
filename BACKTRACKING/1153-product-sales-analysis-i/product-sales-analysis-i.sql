# Write your MySQL query statement below
SELECT product_name,year,price
FROM Sales as sal
JOIN Product as pd
ON sal.product_id=pd.product_id