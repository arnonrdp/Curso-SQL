## Introdução

Antes de começar a aprender SQL, você precisa saber algumas coisas sobre banco de dados. Eles são:

- **Banco de dados**: Um banco de dados é um conjunto de tabelas que armazenam dados.
- **Tabela**: Uma tabela é uma coleção de linhas e colunas que armazenam dados.
- **Linha**: A tabela é organizada por linhas e colunas.
- **Coluna**: Uma linha é organizada por colunas.
- **Dado**: Um dado é um valor que está armazenado em uma coluna.
- **Tipo de dado**: Um dado pode ser do tipo texto, número, data, etc.

## Estrutura do Banco de Dados

Neste tutorial, você aprenderá sobre um banco de dados de exemplo SQL chamado RH que gerencia os dados de RH das pequenas empresas.

O diagrama de banco de dados a seguir ilustra o banco de dados de exemplo de RH:

![Banco de Dados SQLite](./SQL-Sample-Database-Schema.png)

O banco de dados de amostra de RH tem sete tabelas:

1. A tabela `employees` armazena os dados dos funcionários;
2. A tabela `jobs` armazena os dados do cargo, incluindo o cargo e a faixa salarial;
3. A tabela `departments` armazena os dados do departamento;
4. A tabela `dependents` armazena os dependentes do funcionário;
5. A tabela `locations` armazena a localização dos departamentos da empresa;
6. A tabela `countries` armazena os dados dos países onde a empresa está fazendo negócios; e
7. A tabela `regions` armazena os dados de regiões como Ásia, Europa, América e Oriente Médio e África. Os países são agrupados em regiões.

- A figura a seguir mostra os nomes das tabelas e seus registros.

  | Tabela        | Linhas |
  | ------------- | ------ |
  | funcionários  | 40     |
  | dependentes   | 30     |
  | departamentos | 11     |
  | empregos      | 11     |
  | Localizações  | 7      |
  | países        | 25     |
  | regiões       | 4      |

## Configuração

Para criar um banco de dados SQLite você precisa digitar o comando abaixo no terminal:

```shell
sqlite3 nome_do_banco.db
```

Depois de criado, você pode executar comandos SQL.

- O script SQL a seguir cria o banco de dados de amostra de RH no MySQL:
  - [Criar tabela de RH no Banco de Dados](ScriptCreateTables.sql)
- O script a seguir permite inserir dados nas tabelas no MySQL:
  - [Inserir dados de RH nas tabelas](ScriptInsertData.sql)
