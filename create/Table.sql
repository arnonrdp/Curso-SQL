-- O comando CREATE TABLE cria uma nova tabela no banco de dados.

# Cria a tabela 'full_name'
CREATE TABLE full_name (
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

# Cria a tabela 'Persons':
CREATE TABLE Persons (
    PersonID integer PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255),
    YearBorn year,
    City varchar(255)
);