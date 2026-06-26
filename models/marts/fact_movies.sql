{{ config(materialized='table') }}

SELECT
    m.movie_id,
    m.title,
    m.release_date AS date_key,
    g.genre_key,
    m.budget,
    m.revenue,
    (m.revenue - m.budget) AS profit,
    m.rating
FROM {{ ref('stg_movies') }} m
LEFT JOIN {{ ref('dim_genres') }} g 
    ON m.genre = g.genre_name