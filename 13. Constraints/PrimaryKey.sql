-- Uma tabela consiste em colunas e linhas. Normalmente, uma tabela tem uma coluna ou um conjunto de colunas cujos valores identificam exclusivamente cada linha da tabela. Esta coluna ou o conjunto de colunas é chamado de chave primária .

# Criando tabela com chave primária
-- A instrução a seguir cria a tabela [projects].
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(255),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);

# Criando tabela com chave primária usando CONSTRAINT
-- A instrução a seguir é equivalente à instrução acima, mas em vez de usar a restrição PRIMARY KEY como a restrição de coluna, ela usa a restrição de tabela:
CREATE TABLE project_assignments (
    project_id INT,
    employee_id INT,
    join_date DATE NOT NULL,
    CONSTRAINT pk_assgn PRIMARY KEY (project_id, employee_id)
);

# Adicionando a chave primária com a instrução ALTER TABLE
-- A instrução a seguir cria a tabela [project_milestones] sem a chave primária. O 'project_milesones' armazena marcos de projetos.
CREATE TABLE project_milestones(
    milestone_id INT,
    project_id INT,
    milestone_name VARCHAR(100)
);

# Esta instrução não funciona com SQLite
-- Em seguida, é utilizado ALTER TABLE para adicionar a chave primária.
ALTER TABLE
    project_milestones
ADD
    PRIMARY KEY (milestone_id);