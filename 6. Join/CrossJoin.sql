-- CROSS JOIN é usado para fazer um produto cartesiano das tabelas unidas.

/* 
Vamos criar duas novas tabelas para a demonstração do cross join:
 - [sales_organization] armazena as organizações de vendas.
 - [sales_channel] armazena os canais de vendas.
*/

CREATE TABLE sales_organization (
    sales_org_id INT PRIMARY KEY,
    sales_org VARCHAR (255)
);

CREATE TABLE sales_channel (
    channel_id INT PRIMARY KEY,
    channel VARCHAR (255)
);

# Suponha que a empresa tenha duas organizações de vendas que são Domestice Export, que são responsáveis ​​pelas vendas nos mercados doméstico e internacional.
-- A declaração a seguir insere duas organizações de vendas na [sales_organization]:
INSERT INTO
    sales_organization (sales_org_id, sales_org)
VALUES
    (1, 'Domestic'),
    (2, 'Export');

# A empresa pode distribuir mercadorias por meio de vários canais, como atacado, varejo, comércio eletrônico e compras na TV.
-- A declaração a seguir insere canais de vendas na [sales_channel]:
INSERT INTO
    sales_channel (channel_id, channel)
VALUES
    (1, 'Wholesale'),
    (2, 'Retail'),
    (3, 'eCommerce'),
    (4, 'TV Shopping');

# CROSS JOIN
-- Para encontrar todos os canais de vendas possíveis que uma organização de vendas pode ter, use o CROSS JOIN para unir a [sales_organization] à [sales_channel] da seguinte forma:
SELECT
    sales_org,
    channel
FROM
    sales_organization
    CROSS JOIN sales_channel;

-- O conjunto de resultados inclui todas as linhas possíveis nas tabelas [sales_organization] e [sales_channel]

# Equivalência ao CROSS JOIN
-- A consulta a seguir é equivalente à instrução que usa a CROSS JOIN acima:
SELECT
    sales_org,
    channel
FROM
    sales_organization,
    sales_channel;