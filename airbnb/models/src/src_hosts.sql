WITH cte_hosts AS (
    SELECT 
        ID AS HOST_ID,
    	NAME AS HOST_NAME,
    	IS_SUPERHOST,
    	CREATED_AT,
    	UPDATED_AT
FROM airbnb.raw.raw_hosts
)
SELECT * FROM cte_hosts