-- https://leetcode.com/problems/recyclable-and-low-fat-products/description/?envType=study-plan-v2&envId=top-sql-50

-- Recyclable and Low Fat Products

SELECT product_id 
FROM Products
WHERE low_fats LIKE 'Y' AND recyclable LIKE 'Y'