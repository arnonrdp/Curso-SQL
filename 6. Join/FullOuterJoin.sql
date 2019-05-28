--  FULL OUTER JOIN inclui todas as linhas das tabelas unidas, independentemente de a outra tabela ter ou não a linha correspondente.

# UNION ALL para SQLite e FULL OUTER JOIN para MySQL.
SELECT
    city,
    state_province,
    country_name
FROM
    locations
    LEFT JOIN countries USING(country_id)
UNION ALL
SELECT
    city,
    state_province,
    country_name
FROM
    countries
    LEFT JOIN locations USING(country_id);

# FULL OUTER JOIN ficaria da seguinte maneira:
SELECT
    city,
    state_province,
    country_name
FROM
    locations FULL
    OUTER JOIN countries on countries.country_id = locations.country_id;