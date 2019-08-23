-- DROP TABLE é usado para remover uma ou mais tabelas em um banco de dados.

CREATE TABLE table1 ( id INTEGER, name TEXT );

CREATE TABLE table2 ( id INTEGER, name TEXT );

CREATE TABLE table3 ( id INTEGER, name TEXT );

# Remover uma tabela
DROP TABLE IF EXISTS `table1`;

# Remover várias tabelas
-- Esta instrução não funciona com SQLite.
DROP TABLE `table1`,`table2`,`table3`;