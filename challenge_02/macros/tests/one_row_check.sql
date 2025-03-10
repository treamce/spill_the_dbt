{% test one_row_check(model, column_name) %}

    select {{ column_name }}
    from {{ model }}
    having count(distinct {{ column_name }}) > 1

{% endtest %}