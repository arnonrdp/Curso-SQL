-- EXISTS permite especificar uma subconsulta para testar a existência de linhas.

# EXISTS
-- A declaração a seguir encontra todos os funcionários que possuem pelo menos um dependente:
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    EXISTS(
        SELECT
            1
        FROM
            dependents
        WHERE
            dependents.employee_id = employees.employee_id
    );

# NOT EXISTS
-- Por exemplo, a consulta a seguir encontra funcionários que não têm dependentes:
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    NOT EXISTS(
        SELECT
            1
        FROM
            dependents
        WHERE
            dependents.employee_id = employees.employee_id
    );

# EXISTS e NULL
-- A subconsulta retorna, NULLmas o EXISTSoperador ainda avalia como verdadeiro.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    EXISTS(
        SELECT
            NULL
    )
ORDER BY
    first_name,
    last_name;