
  
    

  create  table "movie_db"."public"."fact_movies__dbt_tmp"
  
  
    as
  
  (
    

SELECT
    m.movie_id,
    m.title,
    m.release_date AS date_key,
    g.genre_key,
    m.budget,
    m.revenue,
    (m.revenue - m.budget) AS profit,
    m.rating
FROM "movie_db"."public"."stg_movies" m
LEFT JOIN "movie_db"."public"."dim_genres" g 
    ON m.genre = g.genre_name
  );
  