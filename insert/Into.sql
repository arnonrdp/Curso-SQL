-- O comando INSERT INTO é usado para inserir novas linhas em uma tabela.

# O SQL a seguir insere um novo registro na tabela "Persons":
INSERT INTO
    "Persons" (PersonID, FirstName, LastName, BornDate, City)
VALUES
    (1, 'Arnon', 'Rodrigues', 1990, 'Toronto');

# O SQL a seguir insere vários registros na tabela "Persons":
INSERT INTO
    "Persons" (FirstName, LastName, BornDate, City)
VALUES
    ('John', 'Doe', '1990', 'Rio de Janeiro'),
    ('Jane', 'Doe', '1994', 'Ottawa'),
    ('Maggie', 'Simpson', '2011', 'San Francisco'),
    ('Alan', 'Rick', '1987', 'Rio de Janeiro'),
    ('Tiago', 'Martins', '1995', 'São Paulo'),
    ('Lisa', 'Simpson', '2002', 'New York');