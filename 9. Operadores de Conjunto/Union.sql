-- UNION combina conjuntos de resultados de duas ou mais instruções SELECT em um único conjunto de resultados.

# UNION com ORDER BY
-- A instrução a seguir usa o operador UNION para combinar o nome e o sobrenome dos funcionários e dependentes.
SELECT
    first_name,
    last_name
FROM
    employees
UNION
SELECT
    first_name,
    last_name
FROM
    dependents
ORDER BY
    last_name;