-- SUBQUERY é usado para aninhar uma consulta dentro de outra para formar uma consulta mais flexível para obter dados.

# Tabela departments
-- Observe principalmente as colunas department_id e location_id.
SELECT
    *
FROM
    departments;

# SUBQUERY básica
-- Subconsulta para localizar todos os funcionários que estão localizados no local 1700:
SELECT
    employee_id,
    first_name,
    last_name,
    department_id -- Em produção essa coluna seria removida
FROM
    employees
WHERE
    department_id IN (
        SELECT
            department_id
        FROM
            departments
        WHERE
            location_id = 1700
    )
ORDER BY
    first_name,
    last_name;