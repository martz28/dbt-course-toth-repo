{% set columns = ['listing_id', 'host_id', 'price'] %}

SELECT 

{% for col in columns %}
    {{ col }}{% if not loop.last %}, {% endif %}
{% endfor %}

FROM {{ ref('dim_listings_cleansed') }}