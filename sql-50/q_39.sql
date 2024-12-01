-- https://leetcode.com/problems/movie-rating/description/?envType=study-plan-v2&envId=top-sql-50

-- Movie Rating

SELECT MovieRating.user_id, COUNT(MovieRating.user_id) AS Count, Users.name
FROM MovieRating
JOIN Users
ON MovieRating.user_id = Users.user_id
GROUP BY MovieRating.user_id
ORDER BY Count DESC

SELECT MovieRating.movie_id, AVG(MovieRating.rating) AS Avg, Movies.title
FROM MovieRating
JOIN Movies
ON MovieRating.movie_id = Movies.movie_id
WHERE MovieRating.created_at >= '2020-02-01' AND MovieRating.created_at < '2020-03-01' 
GROUP BY MovieRating.movie_id
ORDER BY Avg DESC