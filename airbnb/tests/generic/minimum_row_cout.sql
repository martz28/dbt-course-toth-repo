{% test minimum_row_count(model, min_count) %}
{{config(
    severity='warn'
)}}
select 
 count(*) as row_count
from {{ model }}
having count(*) < {{ min_count }}
{% endtest %}