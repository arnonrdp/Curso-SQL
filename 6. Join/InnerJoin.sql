-- INNER JOIN é usado para consultar dados de duas ou mais tabelas.

-- A coluna 'department_id' na tabela 'employees' é a coluna de chave estrangeira que vincula as tabelas [employees] e [departments].

# 1) Obter as informações do ID de departamento 1,2 e 3.
SELECT
    department_id,
    department_name
FROM
    departments
WHERE
    department_id IN (1, 2, 3);

# 2) Obter as informações dos funcionários que trabalham no departamento id 1, 2 e 3.
SELECT
    first_name,
    last_name,
    department_id
FROM
    employees
WHERE
    department_id IN (1, 2, 3)
ORDER BY
    department_id;

# 3) INNER JOIN entre as tabelas [employees] e [departments]
-- Para combinar dados dessas duas tabelas, você usa uma cláusula de junção interna como a seguinte consulta:
SELECT
    first_name,
    last_name,
    employees.department_id,
    departments.department_id,
    department_name
FROM
    employees
    INNER JOIN departments ON departments.department_id = employees.department_id
WHERE
    employees.department_id IN (1, 2, 3);

#4) INNER JOIN entre 3 tabelas: [jobs], [employees] e [departments]
-- Obter o nome, sobrenome, cargo e nome do departamento dos funcionários que trabalham na ID de departamento 1, 2 e 3.
SELECT
    first_name,
    last_name,
    job_title,
    department_name
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
    INNER JOIN jobs j ON j.job_id = e.job_id
WHERE
    e.department_id IN (1, 2, 3);