-- HAVING permite especificar uma condição para os grupos resumidos pela cláusula GROUP BY.

# HAVING apenas com GROUP BY
-- Para encontrar os gerentes que têm pelo menos cinco subordinados diretos, você adiciona uma cláusula HAVING à consulta acima como a seguir:
SELECT
    manager_id,
    first_name,
    last_name,
    COUNT(employee_id) direct_reports
FROM
    employees
WHERE
    manager_id IS NOT NULL
GROUP BY
    manager_id
HAVING
    direct_reports >= 5;

# HAVING com SUM
-- Calcula a soma dos salários que a empresa paga para cada departamento e seleciona apenas os departamentos com a soma dos salários entre 20.000 e 30.000.
SELECT
    department_id,
    SUM(salary)
FROM
    employees
GROUP BY
    department_id
HAVING
    SUM(salary) BETWEEN 20000
    AND 30000
ORDER BY
    SUM(salary);

# HAVING com MIN
-- Encontra o departamento que possui funcionários com o menor salário maior que 10.000.
SELECT
    e.department_id,
    department_name,
    MIN(salary)
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
    e.department_id
HAVING
    MIN(salary) >= 10000
ORDER BY
    MIN(salary);