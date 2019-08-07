-- DELETE é usado para excluir uma ou mais linhas de uma tabela.

# DELETE de uma linha
-- Suponha que David, que tem o ID de funcionário 105, queira remover Fred de sua lista de dependentes. Sabemos que Fredtem o id dependente 16, então usamos DELETE para remover Fred da tabela [dependents]. Depois podemos verificar com o COUNT se a linha foi excluída.
DELETE FROM
    dependents
WHERE
    dependent_id = 16;

SELECT COUNT(*) FROM dependents WHERE dependent_id = 16;

# DELETE com várias linhas
-- Para excluir várias linhas em uma tabela, use a condição na WHEREcláusula para identificar as linhas que devem ser excluídas. Por exemplo, a instrução a seguir usa o INoperador para incluir os dependentes dos funcionários com o ID 100, 101 ou 102.
DELETE FROM
    dependents
WHERE
    employee_id IN (100, 101, 102);

SELECT COUNT(*) FROM dependents WHERE employee_id IN (100, 101, 102);