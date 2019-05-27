-- LEFT JOIN permite recuperar dados de várias tabelas.

# 1) Obter os nomes dos países dos EUA, Reino Unido e China.
SELECT
    country_id,
    country_name
FROM
    countries
WHERE
    country_id IN ('US', 'UK', 'CN');

# 2) Obter os locais localizados nos EUA, Reino Unido e China.
SELECT
    country_id,
    street_address,
    city
FROM
    locations
WHERE
    country_id IN ('US', 'UK', 'CN');

# 3) LEFT JOIN para unir a tabela de países com a tabela de locais como a seguinte consulta.
SELECT
    c.country_name,
    c.country_id,
    l.country_id,
    l.street_address,
    l.city
FROM
    countries c
    LEFT JOIN locations l ON l.country_id = c.country_id
WHERE
    c.country_id IN ('US', 'UK', 'CN');

# 4) Encontrar o país que não tem nenhum local na tabela de locais.
SELECT
    country_name -- Substitua por '*' para ver as colunas nulas
FROM
    countries c
    LEFT JOIN locations l ON l.country_id = c.country_id
WHERE
    l.location_id IS NULL
ORDER BY
    country_name;

# 5) LEFT JOIN entre 3 tabelas: [regiões], [países] e [locais].
-- Uma região pode ter zero ou muitos países, enquanto cada país está localizado em uma região. A relação entre as tabelas de países e regiões é um-para-muitos. A coluna region_id na tabela de países é o link entre a tabela de países e regiões.
SELECT
    r.region_name,
    c.country_name,
    l.street_address,
    l.city
FROM
    regions r
    LEFT JOIN countries c ON c.region_id = r.region_id
    LEFT JOIN locations l ON l.country_id = c.country_id
WHERE
    c.country_id IN ('US', 'UK', 'CN');