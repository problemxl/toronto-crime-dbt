
  create view "postgres"."toronto_crime"."fact_crime__dbt_tmp"
    
    
  as (
    




WITH area_crime_table AS (
    SELECT *
    FROM "postgres"."toronto_crime"."stg_neighbourhood_crime"
),

dim_area AS (
    SELECT *
    FROM "postgres"."toronto_crime"."dim_area"
),

dim_year AS (
    SELECT *
    FROM "postgres"."toronto_crime"."dim_year"
),

dim_type AS (
    SELECT *
    FROM "postgres"."toronto_crime"."dim_types"
)



, ASSAULT_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2014 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2014 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2014
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2015 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2015 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2015
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2016 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2016 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2016
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2017 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2017 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2017
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2018 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2018 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2018
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2019 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2019 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2019
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2020 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2020 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2020
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2021 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2021 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2021
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)



, ASSAULT_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ASSAULT_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'ASSAULT'
)

, AUTOTHEFT_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.AUTOTHEFT_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'AUTOTHEFT'
)

, BIKETHEFT_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BIKETHEFT_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'BIKETHEFT'
)

, BREAKENTER_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.BREAKENTER_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'BREAKENTER'
)

, HOMICIDE_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.HOMICIDE_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'HOMICIDE'
)

, ROBBERY_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.ROBBERY_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'ROBBERY'
)

, SHOOTING_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.SHOOTING_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'SHOOTING'
)

, THEFTFROMMV_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTFROMMV_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'THEFTFROMMV'
)

, THEFTOVER_2022 AS (
    SELECT
        dim_area.id as area_id,
        dim_year.id as year_id,
        dim_type.id as type_id,
        area_crime_table.THEFTOVER_2022 as value
    FROM area_crime_table
    INNER JOIN dim_area ON dim_area.area_name = area_crime_table.neighbourhood_name
    INNER JOIN dim_year ON dim_year.year = 2022
    INNER JOIN dim_type ON dim_type.type = 'THEFTOVER'
)


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
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2014
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2014
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2014
    
    UNION ALL
    SELECT * FROM BREAKENTER_2014
    
    UNION ALL
    SELECT * FROM HOMICIDE_2014
    
    UNION ALL
    SELECT * FROM ROBBERY_2014
    
    UNION ALL
    SELECT * FROM SHOOTING_2014
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2014
    
    UNION ALL
    SELECT * FROM THEFTOVER_2014
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2015
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2015
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2015
    
    UNION ALL
    SELECT * FROM BREAKENTER_2015
    
    UNION ALL
    SELECT * FROM HOMICIDE_2015
    
    UNION ALL
    SELECT * FROM ROBBERY_2015
    
    UNION ALL
    SELECT * FROM SHOOTING_2015
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2015
    
    UNION ALL
    SELECT * FROM THEFTOVER_2015
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2016
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2016
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2016
    
    UNION ALL
    SELECT * FROM BREAKENTER_2016
    
    UNION ALL
    SELECT * FROM HOMICIDE_2016
    
    UNION ALL
    SELECT * FROM ROBBERY_2016
    
    UNION ALL
    SELECT * FROM SHOOTING_2016
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2016
    
    UNION ALL
    SELECT * FROM THEFTOVER_2016
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2017
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2017
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2017
    
    UNION ALL
    SELECT * FROM BREAKENTER_2017
    
    UNION ALL
    SELECT * FROM HOMICIDE_2017
    
    UNION ALL
    SELECT * FROM ROBBERY_2017
    
    UNION ALL
    SELECT * FROM SHOOTING_2017
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2017
    
    UNION ALL
    SELECT * FROM THEFTOVER_2017
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2018
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2018
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2018
    
    UNION ALL
    SELECT * FROM BREAKENTER_2018
    
    UNION ALL
    SELECT * FROM HOMICIDE_2018
    
    UNION ALL
    SELECT * FROM ROBBERY_2018
    
    UNION ALL
    SELECT * FROM SHOOTING_2018
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2018
    
    UNION ALL
    SELECT * FROM THEFTOVER_2018
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2019
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2019
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2019
    
    UNION ALL
    SELECT * FROM BREAKENTER_2019
    
    UNION ALL
    SELECT * FROM HOMICIDE_2019
    
    UNION ALL
    SELECT * FROM ROBBERY_2019
    
    UNION ALL
    SELECT * FROM SHOOTING_2019
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2019
    
    UNION ALL
    SELECT * FROM THEFTOVER_2019
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2020
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2020
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2020
    
    UNION ALL
    SELECT * FROM BREAKENTER_2020
    
    UNION ALL
    SELECT * FROM HOMICIDE_2020
    
    UNION ALL
    SELECT * FROM ROBBERY_2020
    
    UNION ALL
    SELECT * FROM SHOOTING_2020
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2020
    
    UNION ALL
    SELECT * FROM THEFTOVER_2020
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2021
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2021
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2021
    
    UNION ALL
    SELECT * FROM BREAKENTER_2021
    
    UNION ALL
    SELECT * FROM HOMICIDE_2021
    
    UNION ALL
    SELECT * FROM ROBBERY_2021
    
    UNION ALL
    SELECT * FROM SHOOTING_2021
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2021
    
    UNION ALL
    SELECT * FROM THEFTOVER_2021
    
    
    
    UNION ALL
    SELECT * FROM ASSAULT_2022
    
    UNION ALL
    SELECT * FROM AUTOTHEFT_2022
    
    UNION ALL
    SELECT * FROM BIKETHEFT_2022
    
    UNION ALL
    SELECT * FROM BREAKENTER_2022
    
    UNION ALL
    SELECT * FROM HOMICIDE_2022
    
    UNION ALL
    SELECT * FROM ROBBERY_2022
    
    UNION ALL
    SELECT * FROM SHOOTING_2022
    
    UNION ALL
    SELECT * FROM THEFTFROMMV_2022
    
    UNION ALL
    SELECT * FROM THEFTOVER_2022
    
    
)
select * from union_all
  );