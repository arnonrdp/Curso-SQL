-- SELF JOIN une a tabela a ela mesma.

# A coluna 'manager_id' especifica o gerente de um funcionário.
-- A instrução a seguir une a tabela de funcionários a ela mesma para consultar as informações de quem se reporta a quem.
SELECT
    e.first_name || ' ' || e.last_name AS employee,
    m.first_name || ' ' || m.last_name AS manager
FROM
    employees e
    INNER JOIN employees m ON m.employee_id = e.manager_id
ORDER BY
    manager;

-- O presidente não tem nenhum gerente. Na tabela de funcionários, o manager_id da linha que contém o presidente é NULL.

# Incluindo o presidente
-- Para incluir o presidente no conjunto de resultados, usamos LEFT JOIN em vez de INNER JOIN como a consulta a seguir.
SELECT
    e.first_name || ' ' || e.last_name AS employee,
    m.first_name || ' ' || m.last_name AS manager
FROM
    employees e
    LEFT JOIN employees m ON m.employee_id = e.manager_id
ORDER BY
    manager;