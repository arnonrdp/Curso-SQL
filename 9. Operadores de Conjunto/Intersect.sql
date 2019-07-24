-- INTERSECT é um operador de conjunto que retorna linhas distintas de dois ou mais conjuntos de resultados de instruções SELECT .

SELECT
    employee_id
FROM
    employees
INTERSECT
SELECT
    employee_id
FROM
    dependents;

# Emulando INTERSECT com ORDER BY
SELECT
    e.employee_id
FROM
    employees e
    INNER JOIN dependents d ON d.employee_id = e.employee_id;