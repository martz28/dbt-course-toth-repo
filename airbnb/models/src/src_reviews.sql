WITH cte_reviews AS (
    SELECT
        LISTING_ID,
    	DATE AS REVIEW_DATE,
    	REVIEWER_NAME,
    	COMMENTS AS REVIEW_TEXT,
    	SENTIMENT AS REVIEW_SENTIMENT
    FROM {{ source('airbnb', 'reviews') }}
)
SELECT * FROM cte_reviews