-- DISTINCT é usado para remover linhas duplicadas de um conjunto de resultados.

# 1) DISTINCT para obter valores únicos em uma coluna
-- O exemplo a seguir seleciona valores exclusivos da coluna de salário da tabela de funcionários.
SELECT
    DISTINCT salary
FROM
    employees
ORDER BY
    salary DESC;

# 2) DISTINCT para obter valores únicos em mais de uma coluna
-- O exemplo a seguir remove os valores duplicados no ID do cargo e no salário.
SELECT
    DISTINCT job_id,
    salary
FROM
    employees
ORDER BY
    job_id,
    salary DESC;

# 3) DISTINCT mantém apenas um NULL no conjunto de resultados
-- O exemplo a seguir retorna os números de telefone distintos dos funcionários.
SELECT
    DISTINCT phone_number
FROM
    employees
ORDER BY
    phone_number;