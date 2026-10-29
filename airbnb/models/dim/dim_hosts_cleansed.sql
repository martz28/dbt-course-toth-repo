-- override the dbt_project materialization for this model
{{ 
  config(
    materialized='table'
    ) 
}}
WITH src_hosts AS (
  SELECT
    *
    FROM {{ ref('src_hosts') }}
)
SELECT 
    HOST_ID,
	COALESCE(HOST_NAME, 'Anonymous') AS HOST_NAME,
	IS_SUPERHOST,
  -- IFF(IS_SUPERHOST='t', TRUE, FALSE) AS IS_SUPERHOST, -- make a change string to boolean
	CREATED_AT,
	UPDATED_AT

FROM src_hosts