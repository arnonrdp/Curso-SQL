-- Os operadores de comparação permitem testar se duas expressões são iguais.

# 1) Operador igual compara a igualdade de duas expressões
-- A seguinte declaração encontra o funcionário cujo sobrenome é Himuro .
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    last_name = 'Himuro';

# 2) Comparação de igualdade com valor NULL
-- Para comparar valores nulos, use o operador IS NULL.
SELECT
    employee_id,
    first_name,
    last_name,
    phone_number
FROM
    employees
WHERE
    phone_number IS NULL;

# 3) O operador diferente de (<>) compara duas expressões não nulas
-- O exemplo abaixo retorna todos os funcionários cujo ID de departamento não é 8 nem 10.
SELECT
    employee_id,
    first_name,
    last_name,
    department_id
FROM
    employees
WHERE
    department_id <> 8
    AND department_id <> 10
ORDER BY
    department_id;

# 4) Operador maior que (>), menor que (<), maior ou igual (>=), menor ou igual (<=)
-- O exemplo abaixo localiza todos os funcionários cujo salário é menor que 10.000 e maior ou igual a 8.000.
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    salary < 10000
    AND salary >= 8000
ORDER BY
    salary DESC;