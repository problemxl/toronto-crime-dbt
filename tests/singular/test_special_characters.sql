-- Check dim_area table for no special characters in area_name
-- Path: tests/singular/test_special_characters.sql

select
    *
from {{ ref('dim_area') }}
where
    area_name ~ E'[^a-zA-Z0-9\\-\'\\s\\.\\/]'
