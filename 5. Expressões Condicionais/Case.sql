-- CASE permite avaliar uma lista de condições e retornar um dos resultados possíveis.
-- A expressão CASE tem dois formatos: CASE simples e CASE pesquisado.

# 1) Operador CASE Simples
-- Obter os aniversários de trabalho dos funcionários usando a seguinte instrução.
SELECT
    first_name,
    last_name,
    hire_date,
    CASE
        (2000 - strftime('%Y', hire_date))
        WHEN 1 THEN '1 year'
        WHEN 3 THEN '3 years'
        WHEN 5 THEN '5 years'
        WHEN 10 THEN '10 years'
        WHEN 15 THEN '15 years'
        WHEN 20 THEN '20 years'
        WHEN 25 THEN '25 years'
        WHEN 30 THEN '30 years'
    END aniversary
FROM
    employees
ORDER BY
    aniversary DESC;

# 1)Operador CASE Pesquisado
-- Se o salário for inferior a 3.000, a expressão CASE retornará “Baixo”. Se o salário estiver entre 3.000 e 5.000, retorna “média”. Quando o salário for maior que 5000, a expressão CASE retornará “Alto”.
SELECT
    first_name,
    last_name,
    CASE
        WHEN salary < 3000 THEN 'Low'
        WHEN salary >= 3000
        AND salary <= 5000 THEN 'Average'
        WHEN salary > 5000 THEN 'High'
    END evaluation
FROM
    employees;