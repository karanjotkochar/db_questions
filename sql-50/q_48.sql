-- https://leetcode.com/problems/group-sold-products-by-the-date/?envType=study-plan-v2&envId=top-sql-50

-- Group Sold Products By The Date

-- check any_value function

SELECT sell_date, COUNT(product) AS num_sold, ANY_VALUE(product) AS products
FROM Activities
GROUP BY sell_date

-- use group_concat function

SELECT 
    sell_date, 
    COUNT(DISTINCT product) AS num_sold, 
    GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date