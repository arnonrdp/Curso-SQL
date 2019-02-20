-- WHERE é usado para filtrar linhas com base nas condições especificadas.

# 1) WHERE com exemplo de comparação numérica
-- A consulta a seguir localiza funcionários com salários superiores a 14.000 e os classifica em ordem decrescente.
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    salary > 14000
ORDER BY
    salary DESC;

# 2) WHERE com exemplo de caracteres
-- A consulta a seguir localiza funcionários com nomes que começam com a letra 'A'.
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    first_name LIKE 'A%';

# 3) WHERE com exemplo de data
-- A consulta a seguir localiza funcionários com data de admissão em 1999 e os classifica em ordem crescente.
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date BETWEEN '1999-01-01'
    AND '1999-12-31'
ORDER BY
    hire_date ASC;