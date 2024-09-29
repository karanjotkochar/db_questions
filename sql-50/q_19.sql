-- https://leetcode.com/problems/queries-quality-and-percentage/description/?envType=study-plan-v2&envId=top-sql-50

-- Queries quality and percentage

--PostgreSQL
SELECT query_name, 
ROUND(AVG( CAST(rating AS DECIMAL)/position),2) AS quality,
ROUND(((SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.00)/(COUNT(*))),2) AS poor_query_percentage 
FROM Queries
WHERE query_name is NOT NULL
GROUP BY query_name
ORDER BY query_name DESC

--MySQL
SELECT query_name, 
ROUND(AVG(rating/position),2) AS quality,
ROUND(((SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100)/(COUNT(*))),2) AS poor_query_percentage 
FROM Queries
GROUP BY query_name
ORDER BY query_name DESC