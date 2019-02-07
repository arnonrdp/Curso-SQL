-- O comando CREATE INDEX é utilizado para criar índices em tabelas (permite valores duplicados).

/*
Os índices são usados​ para recuperar dados do banco de dados muito rapidamente.
Os usuários não podem ver os índices, eles são usados apenas para acelerar as buscas / consultas.
*/

# O SQL a seguir cria um índice chamado "idx_lastname" na coluna "LastName" na tabela "Persons":
CREATE INDEX idx_firstname ON Persons (FirstName);

# Para criar um índice em uma combinação de colunas, basta listar os nomes das colunas entre parênteses, separados por vírgulas:
CREATE INDEX idx_pname ON Persons (LastName, FirstName);

--- O comando CREATE UNIQUE INDEX cria um índice único em uma tabela (não são permitidos valores duplicados).

# O SQL a seguir cria um índice chamado "uidx_pid" na coluna "PersonID" na tabela "Persons":
CREATE UNIQUE INDEX uidx_pid ON Persons (PersonID);