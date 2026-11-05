{% macro learn_logging() %}

    {{ log('\n\n\nCall your mum!\n\n\n', info=True) }}
    {#{ log('\n\n\nCall your mum x2!\n\n\n', info=True) }#}
    {{ log('\n\n\nCall your mum x3!\n\n\n', info=True) }}

{% endmacro %}