-- UPDATE é usado para modificar os dados das linhas existentes de uma tabela.

# UPDATE de uma linha
-- Atualizar o sobrenome de Sarah de 'Bell' para 'Lopez'.
UPDATE
    employees
SET
    last_name = 'Lopez'
WHERE
    employee_id = 192;

SELECT * FROM employees WHERE employee_id = 192;

# UPDATE com várias linhas
-- Atualizar os sobrenomes dos dependentes de Nancy.
UPDATE
    dependents
SET
    last_name = 'Lopez'
WHERE
    employee_id = 192;

SELECT * FROM dependents WHERE employee_id = 192;

# UPDATE com subconsulta
-- Garantir que os sobrenomes dos filhos sempre correspondam ao sobrenome dos pais na [employees].
UPDATE
    dependents
SET
    last_name = (
        SELECT
            last_name
        FROM
            employees
        WHERE
            employee_id = dependents.employee_id
    );