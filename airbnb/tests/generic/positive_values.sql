

{# Define a reusable dbt generic test named "positive_values".
   dbt supplies the model and column_name arguments when the test runs. 
   test is a dbt/Jinja block keyword here. It isn’t a SQL keyword,
    and it doesn’t build a model by itself.

   #}
{% test positive_values(model, column_name) %}

    -- Return every row that fails the test.
    select *

    -- {{ model }} is replaced with the model or table being tested.
    from {{ model }}

    -- {{ column_name }} is replaced with the column being checked.
    -- <= means "less than or equal to"; zero and negative values fail.
    where {{ column_name }} <= 0

{% endtest %}