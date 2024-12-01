-- https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50

-- Movie Rating

-- Individual queries

SELECT MovieRating.user_id, COUNT(MovieRating.user_id) AS Count, Users.name
FROM MovieRating
JOIN Users
ON MovieRating.user_id = Users.user_id
GROUP BY MovieRating.user_id
ORDER BY Count DESC, Users.name ASC
LIMIT 1

SELECT MovieRating.movie_id, AVG(MovieRating.rating) AS Avg, Movies.title
FROM MovieRating
JOIN Movies
ON MovieRating.movie_id = Movies.movie_id
WHERE MovieRating.created_at >= '2020-02-01' AND MovieRating.created_at < '2020-03-01' 
GROUP BY MovieRating.movie_id
ORDER BY Avg DESC, Movies.title ASC
LIMIT 1

-- Merge both queries

WITH cte1 AS (
    SELECT Users.name AS results
    FROM MovieRating
    JOIN Users
    ON MovieRating.user_id = Users.user_id
    GROUP BY MovieRating.user_id
    ORDER BY COUNT(MovieRating.user_id) DESC, Users.name ASC
    LIMIT 1
    ),
cte2 AS (
    SELECT Movies.title AS results
    FROM MovieRating
    JOIN Movies
    ON MovieRating.movie_id = Movies.movie_id
    WHERE MovieRating.created_at >= '2020-02-01' AND MovieRating.created_at < '2020-03-01' 
    GROUP BY MovieRating.movie_id
    ORDER BY AVG(MovieRating.rating) DESC, Movies.title ASC
    LIMIT 1
)
SELECT results FROM cte1
UNION ALL
SELECT results FROM cte2