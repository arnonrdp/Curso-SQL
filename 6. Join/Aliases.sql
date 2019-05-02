-- Alias permite atribuir um nome temporário a uma tabela ou coluna durante a execução de uma consulta.

# Alias ​​para expressões
-- Se uma consulta contiver expressões, você poderá atribuir aliases de coluna às expressões.
SELECT
    first_name,
    last_name,
    salary * 1.1 AS new_salary
FROM
    employees;

# Alias de tabela
-- No SELECT, em vez de usar o nome da tabela employees, você pode usar um alias para ela.
SELECT
    e.first_name,
    e.last_name
FROM
    employees AS e;