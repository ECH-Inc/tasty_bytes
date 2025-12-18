WITH RawCountry AS(
    SELECT *
    FROM {{ source('tb_101', 'COUNTRY')}}
),
FinalTable AS(
    SELECT COUNTRY_ID,
        COUNTRY
    FROM RawCountry
)
SELECT *
FROM FinalTable