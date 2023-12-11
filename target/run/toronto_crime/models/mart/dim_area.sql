
  create view "postgres"."toronto_crime"."dim_area__dbt_tmp"
    
    
  as (
    -- models/dim_area.sql

with base as (
    select
        md5(neighbourhood_name) as id,
        neighbourhood_name as area_name
    from
        "postgres"."toronto_crime"."stg_neighbourhood_crime"
)

select
    id as id,
    area_name as area_name
from
    base
  );