-- SELECT – mostra como consultar dados de uma única tabela usando a forma mais simples da instrução SELECT.

# 1) Seleção de dados de todas as colunas
-- O exemplo a seguir obtém dados de todas as linhas e colunas da tabela de funcionários.
SELECT
    *
FROM
    employees;

# 2) Selecionando dados de colunas específicas:
-- O exemplo a seguir obtém dados de todas as linhas de colunas específicas da tabela de funcionários.
SELECT
    employee_id,
    first_name,
    last_name,
    hire_date
FROM
    employees;

# 3) Realizando um cálculo simples:
-- A expressão salário * 1,05 adiciona 5 % ao salário de cada funcionário. Por padrão, o SQL usa a expressão como cabeçalho da coluna.
SELECT
    first_name,
    last_name,
    salary,
    salary * 1.05
FROM
    employees;

# 4) Realizando um cálculo simples com ALIAS:
-- Para atribuir um alias a uma expressão ou coluna, especifique a palavra-chave AS seguida pelo alias da coluna.
SELECT
    first_name,
    last_name,
    salary,
    salary * 1.05 AS new_salary
FROM
    employees;