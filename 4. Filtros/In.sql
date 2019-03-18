-- IN retorna true se um valor estiver em um conjunto de valores ou false caso contrário.

# Operador IN com campos inteiros
-- O exemplo a seguir usa o operador IN para localizar funcionários com o ID do cargo 8, 9 ou 10:
SELECT
    employee_id,
    first_name,
    last_name,
    job_id
FROM
    employees
WHERE
    job_id IN (8, 9, 10)
ORDER BY
    job_id;

# Operador IN e NOT IN com campos inteiros
-- O exemplo a seguir usa o NOT IN para localizar funcionários que não pertencem ao department_id 2, 3, 5 e 8.
SELECT
    employee_id,
    first_name,
    last_name,
    department_id
FROM
    employees
WHERE
    department_id NOT IN (2, 3, 5, 8)
ORDER BY
    department_id;