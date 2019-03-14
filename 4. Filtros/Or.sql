-- OR sempre retorna true se uma das expressões for true.

# Operador OR com campos inteiros
-- Retorna os funcionários que possuem department_id = 3 ou department_id = 4.
SELECT
    first_name,
    last_name,
    hire_date,
    department_id
FROM
    employees
WHERE
    department_id = 3
    OR department_id = 4;

# Operador OR com campos de texto
-- A consulta a seguir retorna o ID doS departamentos de Marketing e Vendas:
SELECT
    department_id
FROM
    departments
WHERE
    department_name = 'Marketing'
    OR department_name = 'Sales';