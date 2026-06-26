

SELECT
    MD5(genre) AS genre_key,
    genre AS genre_name
FROM "movie_db"."public"."stg_movies"
GROUP BY 1, 2