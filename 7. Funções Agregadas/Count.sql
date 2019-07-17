-- COUNT é uma função agregada que retorna o número de linhas retornadas por uma consulta.

-- Abaixo estão algumas cláusulas que não necessitam explicação

SELECT COUNT(*) FROM employees;

SELECT COUNT(*) FROM employees WHERE department_id = 6;

SELECT COUNT(*) FROM employees WHERE job_id = 9;

# COUNT com GROUP BY
-- Encontra o número de funcionários por departamento.
SELECT
    department_id,
    COUNT(*) as employees_count
FROM
    employees
GROUP BY
    department_id;

# COUNT com HAVING
-- Obtém os departamentos e seu número de funcionários desde que o departamento possua mais de 5 funcionários.
SELECT
    e.department_id,
    department_name,
    COUNT(*)
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
    e.department_id
HAVING
    COUNT(*) > 5
ORDER BY
    COUNT(*) DESC;

# COUNT com DISTINCT
-- Obter o número de gerentes
SELECT
    COUNT(DISTINCT manager_id)
FROM
    employees;