-- Subquery correlacionada é uma subconsulta que usa valores da consulta externa.

# SUBQUERY correlacionada com WHERE
-- A consulta a seguir encontra todos os funcionários cujo salário é superior ao salário médio dos funcionários em seus departamentos:
SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    department_id
FROM
    employees e
WHERE
    salary > (
        SELECT
            AVG(salary)
        FROM
            employees
        WHERE
            department_id = e.department_id
    )
ORDER BY
    department_id,
    first_name,
    last_name;

# SUBQUERY correlacionada com EXISTS
-- A consulta a seguir retorna todos os funcionários que não têm dependentes.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees e
WHERE
    NOT EXISTS(
        SELECT
            *
        FROM
            dependents d
        WHERE
            d.employee_id = e.employee_id
    )
ORDER BY
    first_name,
    last_name;