SELECT
    fr.*,
    dl.created_at
    
FROM
    {{ref('fact_reviews')}} AS fr
JOIN {{ref('dim_listings_cleansed')}} AS dl
    ON fr.listing_id = dl.listing_id

WHERE dl.created_at > fr.review_date -- reviews must be older than the listing
LIMIT 10 -- don't need millions of rows only need 1