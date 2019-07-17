-- MIN retorna o valor mínimo em um conjunto de valores.

SELECT MIN(salary) FROM employees;

SELECT first_name, last_name, MIN(salary) as salary FROM employees;

# MIN com GROUP BY
-- Encontrar o menor salário do funcionário em cada departamento.
SELECT
    department_id,
    MIN(salary)
FROM
    employees
GROUP BY
    department_id;

# MIN com HAVING
-- Obter o departamento que possui funcionário cujo salário mais baixo é menor que 3.000.
SELECT
    d.department_id,
    department_name,
    MIN(salary)
FROM
    employees e
    INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
    d.department_id
HAVING
    MIN(salary) < 3000;