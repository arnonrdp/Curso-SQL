-- INSERT permite inserir uma ou mais linhas em uma tabela.

# INSERT com uma linha
-- Inserir uma nova linha na tabela [dependents].
INSERT INTO
    dependents (
        first_name,
        last_name,
        relationship,
        employee_id
    )
VALUES
    ('Dustin', 'Johnson', 'Child', 178);

SELECT * FROM dependents WHERE employee_id = 178;

# INSERT com várias linhas
-- Inserir duas linhas na tabela [dependents].
INSERT INTO
    dependents (
        first_name,
        last_name,
        relationship,
        employee_id
    )
VALUES
    ('Cameron', 'Bell', 'Child', 192),
    ('Michelle', 'Bell', 'Child', 192);

SELECT * FROM dependents WHERE employee_id = 192;

# INSERT INTO para copiar linhas de outras tabelas
-- Suponha que você tenha uma tabela chamada [dependents_archive] que tenha a mesma estrutura da [dependents]. A instrução a seguir copia todas as linhas da [dependents] para a [dependents_archive].
INSERT INTO
    dependents_archive
SELECT
    *
FROM
    dependents;