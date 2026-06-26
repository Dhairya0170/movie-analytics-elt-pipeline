
  create view "movie_db"."public"."stg_movies__dbt_tmp"
    
    
  as (
    

SELECT
    CAST(id AS INTEGER) AS movie_id,
    CAST(title AS VARCHAR) AS title,
    CAST(release_date AS DATE) AS release_date,
    CAST(genre AS VARCHAR) AS genre,
    CAST(budget AS NUMERIC) AS budget,
    CAST(revenue AS NUMERIC) AS revenue,
    CAST(vote_average AS NUMERIC) AS rating
FROM raw.movies
WHERE release_date IS NOT NULL
  );