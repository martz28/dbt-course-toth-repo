{% macro learn_variables() %}

    {% set my_jina_name = 'Mr Jinja'%}

    {{ log('\n\n\nhelloooooooooo ' ~ my_jina_name ~ '\n\n\n', info=True) }}


    {{ log('\n\n\nhelloooooooooo ' ~ var('username', 'no username set') ~ '\n\n\n', info=True) }}


{% endmacro %}
