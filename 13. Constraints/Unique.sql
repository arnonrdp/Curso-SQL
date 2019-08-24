-- UNIQUE define uma regra que evita valores duplicados armazenados em colunas específicas que não participam de uma chave primária.

# UNIQUE simples
-- UNIQUE como a restrição de coluna.
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

# UNIQUE em CONSTRAINT
-- A instrução a seguir é equivalente à instrução acima com a restrição UNIQUE criada usando a sintaxe de restrição de tabela.
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    CONSTRAINT uc_username UNIQUE (username)
);