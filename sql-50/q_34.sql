-- https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50

-- Product Price at a Given Date

WITH cte1 AS (
    SELECT 
        DISTINCT product_id,
        new_price AS price,
        DENSE_RANK() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS ranking
    FROM Products
    WHERE change_date <= '2019-08-16'
)

SELECT product_id, price 
FROM cte1
WHERE ranking = 1

UNION ALL

SELECT 
    DISTINCT product_id, 10 AS price
    FROM Products
    WHERE product_id NOT IN (
                        SELECT product_id 
                        FROM products 
                        WHERE change_date <= '2019-08-16'
                        )