# Write your MySQL query statement below
SELECT 
    pr.product_name,
    SUM(o.unit) AS unit
FROM Products as pr
LEFT JOIN Orders as o
ON pr.product_id=o.product_id
WHERE order_date LIKE "2020-02%"
GROUP BY pr.product_name
HAVING SUM(unit)>=100
