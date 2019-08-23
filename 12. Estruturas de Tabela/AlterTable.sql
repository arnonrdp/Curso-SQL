-- ALTER TABLE é usado para alterar a estrutura das tabelas existentes no banco de dados.

# ALTER TABLE courses
-- A instrução a seguir adiciona uma nova coluna nomeada 'credit_hours' à tabela [courses].
ALTER TABLE
    courses
ADD
    credit_hours INT NOT NULL;

# ALTER TABLE courses
-- Remover a coluna 'course_name' da tabela [courses].
ALTER TABLE
    courses DROP COLUMN course_name;