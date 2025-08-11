-- WITH CTE AS (
--     SELECT *
--     FROM Stocks
-- ),
-- CTE2 AS (
--     SELECT *,
--            LEAD(price, 1) OVER (
--                PARTITION BY stock_name 
--                ORDER BY operation_day, operation
--            ) AS sell_price
--     FROM CTE
-- )
-- SELECT stock_name,
--        SUM(sell_price - price) AS capital_gain_loss
-- FROM CTE2
-- WHERE operation = 'Buy'
-- GROUP BY stock_name;



SELECT stock_name,SUM(CASE WHEN operation="Buy" THEN price*-1 ELSE price END) AS capital_gain_loss
FROM Stocks 
GROUP BY stock_name;


