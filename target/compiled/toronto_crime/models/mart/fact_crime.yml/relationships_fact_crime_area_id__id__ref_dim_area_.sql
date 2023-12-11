
    
    

with child as (
    select area_id as from_field
    from "postgres"."toronto_crime"."fact_crime"
    where area_id is not null
),

parent as (
    select id as to_field
    from "postgres"."toronto_crime"."dim_area"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null

