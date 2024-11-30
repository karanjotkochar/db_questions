-- https://leetcode.com/problems/customers-who-bought-all-products/description/?envType=study-plan-v2&envId=top-sql-50

-- Customers Who Bought All Products

SELECT customer_id
FROM Customer
INNER JOIN Product
ON Customer.product_key = Product.product_key
GROUP BY customer_id
HAVING COUNT(DISTINCT customer.product_key) = (SELECT COUNT(product_key) FROM Product)