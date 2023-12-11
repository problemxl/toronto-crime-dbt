select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      -- Check dim_area table for no special characters in area_name
-- Path: tests/singular/test_special_characters.sql

select
    *
from "postgres"."toronto_crime"."dim_area"
where
    area_name ~ E'[^a-zA-Z0-9\\-\'\\s\\.\\/]'
      
    ) dbt_internal_test