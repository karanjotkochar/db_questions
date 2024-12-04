-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/?envType=study-plan-v2&envId=top-sql-50

-- List the Products Ordered in a Period

WITH cte AS (
    SELECT p.product_id, p.product_name, p.product_category, SUM(o.unit) AS unit, o.order_date
    FROM Products AS p 
    JOIN Orders AS o 
    ON p.product_id = o.product_id
    WHERE o.order_date >= '2020-02-01' AND o.order_date < '2020-03-01'
    GROUP BY p.product_id
)
SELECT product_name, unit 
FROM cte
WHERE unit >= 100