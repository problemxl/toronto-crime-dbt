{% test not_negative(model, column_name) %}

with validation as (
    select
        {{ column_name }} as not_negative_field
    from {{ model }}

),
validation_errors as (
    select
        not_negative_field
    from validation
    where not_negative_field < 0
)

select
    *
from validation_errors
{% endtest %}