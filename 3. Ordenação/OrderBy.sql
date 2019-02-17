-- ORDER BY é usado para classificar o conjunto de resultados com base em critérios especificados em ordem crescente ou decrescente.

# 1) ORDER BY para classificar valores em uma coluna
-- O exemplo a seguir classifica funcionários por nomes em ordem alfabética.
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
ORDER BY
    first_name;

#2 ORDER BY para classificar valores em várias colunas
-- O exemplo a seguir classifica os funcionários pelo primeiro nome em ordem crescente e pelo sobrenome em ordem decrescente.
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
ORDER BY
    first_name,
    last_name DESC;

# 3) ORDER BY para classificar valores em um exemplo de coluna numérica
-- O exemplo a seguir classifica os funcionários por salário de alto a baixo.
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
ORDER BY
    salary DESC;

# 4) ORDER BY para classificar por datas
-- O exemplo a seguir classifica os funcionários por valores na coluna hire_date.
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
ORDER BY
    hire_date;

# 4) ORDER BY para classificar por datas em ordem decrescente
-- Para ver os funcionários que ingressaram na empresa do último ao primeiro, classifique os funcionários pelas datas de admissão em ordem decrescente.
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date,
    salary
FROM
    employees
ORDER BY
    hire_date DESC;