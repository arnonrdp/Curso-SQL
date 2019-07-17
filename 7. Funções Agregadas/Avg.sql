-- AVG é uma função agregada que calcula o valor médio de um conjunto.

-- Calcular o salário médio de todos os funcionários

SELECT AVG(salary) FROM employees;

SELECT AVG(DISTINCT salary) FROM employees;

# ROUND para arredondar para 2 casas decimais.
SELECT
    ROUND(AVG(DISTINCT salary), 2)
FROM
    employees;

# AVG com WHERE
SELECT
    AVG(DISTINCT salary)
FROM
    employees
WHERE
    department_id = 5;

# AVG com GROUP BY
-- Retorna os departamentos e o salário médio dos funcionários de cada departamento.
SELECT
    department_id,
    AVG(salary)
FROM
    employees
GROUP BY
    department_id;

# AVG com GROUP BY e INNER JOIN
-- Retorna os departamentos e o salário médio dos funcionários com o nome de cada departamento.
SELECT
    d.department_id,
    d.department_name,
    AVG(salary)
FROM
    employees e
    INNER JOIN departments d ON e.department_id = d.department_id
GROUP BY
    d.department_id;