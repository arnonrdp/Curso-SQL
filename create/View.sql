-- O comando CREATE VIEW cria uma visualização.

/*
Uma visualização é uma tabela virtual baseada no conjunto de resultados de uma instrução SQL.
*/

# O SQL a seguir cria uma view que seleciona o primeiro nome de todas as pessoas do Rio de Janeiro:
CREATE VIEW "Persons from Rio" AS
SELECT
    FirstName
FROM
    Persons
WHERE
    City = 'Rio de Janeiro';

-- O comando CREATE OR REPLACE VIEW atualiza uma visualização.

# O SQL a seguir adiciona a coluna "LastName" à visualização "Persons from Rio":
ALTER VIEW "Persons from Rio" ADD LastName;