-- SUM é uma função agregada que retorna a soma de todos ou valores distintos.

SELECT SUM(salary) FROM employees;

SELECT SUM(salary) FROM employees WHERE department_id = 5;

# SUM com GROUP BY
-- Soma dos salários dos funcionários de cada departamento.
SELECT
    department_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id;

# SUM com HAVING
-- Obter os departamentos e suas somas de salários maiores que 30.000,
SELECT
    e.department_id,
    department_name,
    SUM(salary)
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
    e.department_id
HAVING
    SUM(salary) > 30000
ORDER BY
    SUM(salary) DESC;