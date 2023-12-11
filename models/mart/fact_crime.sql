{% set years = ["2014", "2015", "2016", "2017", "2018", "2019", "2020", "2021", "2022"] %}
{% set types = ["ASSAULT", "AUTOTHEFT", "BIKETHEFT", "BREAKENTER", "HOMICIDE", "ROBBERY", "SHOOTING", "THEFTFROMMV", "THEFTOVER"] %}



WITH area_crime_table AS (
    SELECT *
    FROM {{ ref('stg_neighbourhood_crime') }}
),

dim_area AS (
    SELECT *
    FROM {{ ref('dim_area') }}
),

dim_year AS (
    SELECT *
    FROM {{ ref('dim_year') }}
),

dim_type AS (
    SELECT *
    FROM {{ ref('dim_types') }}
)

{% for year in years %}
{% for type in types %}
, {{ type }}_{{ year }} AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.{{ type + "_" + year}} as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = {{ year }}
    INNER JOIN dim_type ON dim_type.type = '{{ type }}'
)
{% endfor %}
{% endfor %}
, population_row AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.population as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = '2022'
    INNER JOIN dim_type ON dim_type.type = 'POPULATION'
)
-- Union all the type_year tables together and add the population
, union_all AS (
    SELECT * FROM population_row
    {% for year in years %}
    {% for type in types %}
    UNION ALL
    SELECT * FROM {{ type }}_{{ year }}
    {% endfor %}
    {% endfor %}
)
select * from union_all

