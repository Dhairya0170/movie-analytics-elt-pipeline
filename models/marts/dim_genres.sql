{{ config(materialized='table') }}

SELECT
    MD5(genre) AS genre_key,
    genre AS genre_name
FROM {{ ref('stg_movies') }}
GROUP BY 1, 2