-- LIMIT é usado para limitar o número de linhas retornadas de uma consulta.

# 1) LIMIT para determinar o número de linhas retornadas pela consulta
-- O exemplo retorna as 5 primeiras linhas do conjunto de resultados retornados pelo SELECT.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
ORDER BY
    first_name
LIMIT
    5;

# 2) OFFSET para ignorar as linhas de deslocamento antes de começar a retornar as linhas
-- O exemplo a seguir usa LIMIT e OFFSET para retornar cinco linhas a partir da 4ª linha.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
ORDER BY
    first_name
LIMIT
    5 OFFSET 3;

# 3) LIMIT e OFFSET de forma abreviada
-- No MySQL e SQLite, você pode usar a forma mais curta das cláusulas LIMIT & OFFSET.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
ORDER BY
    first_name
LIMIT
    3, 5;