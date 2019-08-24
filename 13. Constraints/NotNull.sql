-- NOT NULL é uma restrição de coluna que define a regra que restringe uma coluna a ter apenas valores não NULL.

# NOT NULL para a coluna 'taken_date
-- Por exemplo, a instrução a seguir cria a trainingtabela que tem a taken_datecoluna com a restrição NOT NULL.
CREATE TABLE training (
    employee_id INT,
    course_id INT,
    taken_date DATE NOT NULL,
    PRIMARY KEY (employee_id, course_id)
);

-- Alterar uma coluna para NOT NULL

# 1) Deve-se definir um valor para todas as linhas da coluna que será modificada para NOT NULL.
UPDATE
    table_name
SET
    column_name = 0
WHERE
    column_name IS NULL;

# 2) Pode-se então adicionar a restrição à coluna.
ALTER TABLE
    table_name
MODIFY
    column_name data_type NOT NULL;