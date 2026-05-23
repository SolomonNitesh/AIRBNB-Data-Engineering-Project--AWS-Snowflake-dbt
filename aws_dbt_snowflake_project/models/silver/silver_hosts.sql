{{
    config(
     materialized = 'incremental',
     unique_key = 'HOST_ID'
    )
}}

SELECT
    HOST_ID,
    REPLACE(HOST_NAME, ' ', '_') AS HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    RESPONSE_RATE,
    CASE
    WHEN RESPONSE_RATE >= 90 THEN 'Excellent'
    WHEN RESPONSE_RATE >= 70 THEN 'Good'
    WHEN RESPONSE_RATE >= 50 THEN 'Average'
    ELSE 'Poor'
    END AS RESPONSE_RATE_QUALITY,
    CREATED_AT

FROM {{ref('bronze_hosts')}}
