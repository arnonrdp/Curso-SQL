-- LIKE retorna true se um valor corresponder a um padrão ou false caso contrário.
-- Percent( % ) corresponde a zero, um ou mais caracteres.
-- Underscore ( _ ) corresponde a um único caractere.

# 1) Operador LIKE com 1 Percent
-- O exemplo a seguir usa o operador LIKE para localizar todos os funcionários cujos nomes começam com Da.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    first_name LIKE 'Da%';

# 2) Operador LIKE com 2 Underscores
-- O exemplo a seguir recupera os funcionários cujos primeiros nomes começam com Jo e são seguidos por no máximo 2 caracteres.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    first_name LIKE 'Jo__';

# 3) Operador LIKE com 1 Percent e 1 Underscore
-- O exemplo a seguir localiza funcionários cujos nomes começam com qualquer número de caracteres e são seguidos por no máximo um caractere.
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    first_name LIKE '%are_';

# 4) Operador LIKE com NOT LIKE
-- O exemplo a seguir usa o operador NOT LIKE para localizar todos os funcionários cujos nomes começam com a letra S, mas não começam com Sh:
SELECT
    employee_id,
    first_name,
    last_name
FROM
    employees
WHERE
    first_name LIKE 'S%'
    AND first_name NOT LIKE 'Sh%'
ORDER BY
    first_name;