-- GROUP BY combina linhas em grupos com base em valores correspondentes em colunas especificadas.

# GROUP BY coluna department_id
-- Encontrar o número de funcionários de cada departamento.
SELECT
    department_id,
    COUNT(employee_id) headcount
FROM
    employees
GROUP BY
    department_id;

# GROUP BY com INNER JOIN
-- Encontrar o número de funcionários com o nome de cada departamento.
SELECT
    e.department_id,
    department_name,
    COUNT(employee_id) headcount
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
    e.department_id;

# GROUP BY com MIN, MAX e AVG
-- A consulta a seguir retorna o salário mínimo, máximo e médio dos funcionários em cada departamento.
SELECT
    e.department_id,
    department_name,
    MIN(salary) min_salary,
    MAX(salary) max_salary,
    ROUND(AVG(salary), 2) average_salary
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
    e.department_id;

# GROUP BY com mais de uma coluna
-- Agrupar linhas com os mesmos valores em ambas colunas 'department_id' e 'job_id' no mesmo grupo e, em seguida, retornar as linhas para cada um desses grupos.
SELECT
    e.department_id,
    department_name,
    e.job_id,
    job_title,
    COUNT(employee_id)
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
    INNER JOIN jobs j ON j.job_id = e.job_id
GROUP BY
    e.department_id,
    e.job_id;