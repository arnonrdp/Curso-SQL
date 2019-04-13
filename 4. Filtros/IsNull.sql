-- NULL indica que os dados são desconhecidos, inaplicáveis ​​ou mesmo não existem. Em outras palavras, NULL representa os dados ausentes no banco de dados.

# 1) Operador IS NULL
-- O exemplo encontra todos os funcionários que não possuem os números de telefone.
SELECT
    employee_id,
    first_name,
    last_name,
    phone_number
FROM
    employees
WHERE
    phone_number IS NULL;

# 2) Operador IS NOT NULL
-- O exemplo encontra todos os funcionários que possuem os números de telefone.
SELECT
    employee_id,
    first_name,
    last_name,
    phone_number
FROM
    employees
WHERE
    phone_number IS NOT NULL;