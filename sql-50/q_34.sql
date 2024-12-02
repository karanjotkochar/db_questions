-- https://leetcode.com/problems/product-price-at-a-given-date/description/?envType=study-plan-v2&envId=top-sql-50

-- Product Price at a Given Date

WITH cte AS (
    SELECT 
        DISTINCT product_id,
        new_price,
        change_date,
        DENSE_RANK() OVER (PARTITION BY product_id ORDER BY change_date DESC) AS ranking
    FROM Products
    WHERE change_date <= '2019-08-16'
)

SELECT * FROM cte
WHERE ranking = 1