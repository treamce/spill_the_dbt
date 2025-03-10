{% test no_digits(model, column_name) %}

select * from {{model}}
where {{column_name}} like '%[0-9]%'
{% endtest %}