with cte1 AS
(SELECT MR.user_id,  U.name, COUNT(MR.rating) AS rating_cnt
FROM MovieRating MR
JOIN Users U
ON U.user_id = MR.user_id
GROUP BY MR.user_id
), cte2 AS
(SELECT M.movie_id, M.title, AVG(MR.rating) AS avg_cnt
FROM Movies M
JOIN MovieRating MR
ON M.movie_id = MR.movie_id
WHERE MR.created_at BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY M.movie_id)
SELECT MIN(name) AS results
FROM cte1
WHERE rating_cnt = (
    SELECT MAX(rating_cnt) FROM cte1)
UNION ALL
SELECT MIN(title) AS results
FROM cte2
WHERE avg_cnt = (
    SELECT MAX(avg_cnt)
    FROM cte2
)