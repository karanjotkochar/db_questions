-- https://leetcode.com/problems/group-sold-products-by-the-date/?envType=study-plan-v2&envId=top-sql-50

-- Group Sold Products By The Date

SELECT 
    sell_date, COUNT(product) AS num_sold
FROM Activities
GROUP BY sell_date