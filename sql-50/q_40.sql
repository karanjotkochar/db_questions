-- https://leetcode.com/problems/restaurant-growth/description/?envType=study-plan-v2&envId=top-sql-50

-- Restaurant Growth

-- Only one record

SELECT 
    visited_on, 
    SUM(amount) AS amount , 
    ROUND(AVG(amount), 2) AS average_amount
FROM Customer
GROUP BY visited_on between '2019-01-01' AND '2019-01-07'
ORDER BY visited_on ASC

-- Using window function and cte
-- cte1: calculates rolling sum of amount for the last 6 days for each visited_on
-- Window: current day and 5 'preceeding days'
-- cte2: finds the earliest day from whihc cte1 can be started

-- inner join: ensures that only windows with at least 6 days of data are included
-- datediff: filters out results that don't yet have a full 6-day window of data, help inner join 

WITH cte1 AS (
	  SELECT DISTINCT visited_on, 
			 SUM(amount) OVER (ORDER BY visited_on RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW) AS amount
	  FROM Customer
	),
    cte2 AS (
        SELECT MIN(visited_on) AS min_visited_on 
        FROM cte1
    )

SELECT visited_on, amount, ROUND(amount/7, 2) AS average_amount
FROM cte1
INNER JOIN cte2
ON DATEDIFF(cte1.visited_on, cte2.min_visited_on) >= 6;