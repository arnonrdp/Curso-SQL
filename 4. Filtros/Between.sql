-- BETWEEN verifica se um valor está dentro de um intervalo de valores.

# Operador BETWEEN com campos de data
-- Retorna os funcionários que possuem department_id = 3 ou department_id = 4, exceto os funcionários contratados depois de 1997.
SELECT
    first_name,
    last_name,
    hire_date,
    department_id
FROM
    employees
WHERE
    hire_date BETWEEN '1997-01-01'
    AND '1997-12-31'
    OR hire_date BETWEEN '2000-01-01'
    AND '2000-12-31'
ORDER BY
    hire_date;

# Operador BETWEEN com campos inteiros
-- O exemplo a seguir usa o operador NOT BETWEEN para encontrar todos os funcionários cujos salários não estão na faixa de 6.000 a 7.000.
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    salary NOT BETWEEN 6000
    AND 7000
ORDER BY
    salary DESC;