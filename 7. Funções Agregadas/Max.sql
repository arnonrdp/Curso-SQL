-- MAX permite encontrar o valor máximo em um conjunto de valores.

SELECT MAX(salary) FROM employees;

SELECT first_name, last_name, MAX(salary) as salary FROM employees;

# MAX com GROUP BY
-- Encontrar o maior salário do funcionário em cada departamento.
SELECT
    department_id,
    MAX(salary)
FROM
    employees
GROUP BY
    department_id;

# MAX com HAVING
-- Obter o departamento que possui funcionário cujo salário mais alto é maior que 12.000.
SELECT
    d.department_id,
    department_name,
    MAX(salary)
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
    e.department_id
HAVING
    MAX(salary) > 12000;