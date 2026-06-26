
  
    

  create  table "movie_db"."public"."dim_date__dbt_tmp"
  
  
    as
  
  (
    

SELECT DISTINCT
    release_date AS date_key,
    EXTRACT(YEAR FROM release_date) AS release_year,
    EXTRACT(MONTH FROM release_date) AS release_month,
    EXTRACT(QUARTER FROM release_date) AS release_quarter
FROM "movie_db"."public"."stg_movies"
WHERE release_date IS NOT NULL
  );
  