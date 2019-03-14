-- AND retorna true se ambas as expressões forem true. Se uma for false, o operador AND retornará false mesmo que uma das expressões seja NULL.

# Operadores: AND, >= e <=
-- Encontra todos os funcionários que ingressaram na empresa entre 1997 e 1998
SELECT
    first_name,
    last_name,
    hire_date
FROM
    employees
WHERE
    hire_date >= '1997-01-01'
    AND hire_date <= '1998-12-31'
ORDER BY
    hire_date;