-- Uma chave estrangeira é uma coluna ou um grupo de colunas que impõe um link entre os dados em duas tabelas. Em uma referência de chave estrangeira, a coluna (ou colunas) de chave primária da primeira tabela é referenciada pela coluna (ou colunas) da segunda tabela. A coluna (ou colunas) da segunda tabela torna-se a chave estrangeira.

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

CREATE TABLE project_milestones (
    milestone_id INT AUTO_INCREMENT PRIMARY KEY,
    project_id INT,
    milestone_name VARCHAR(100),
    CONSTRAINT fk_project FOREIGN KEY (project_id) REFERENCES projects (project_id)
);

-- A cláusula FOREIGN KEY promove o 'project_id' da tabela [project_milestones] para se tornar a chave estrangeira que é referenciada ao 'project_id' da tabela [projects].