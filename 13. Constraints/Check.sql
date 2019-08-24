-- CHECK é uma restrição de integridade em SQL que permite especificar que um valor em uma coluna ou conjunto de colunas deve satisfazer uma expressão booleana.

# CHECK simples
-- Para criar a tabela de produtos com o valor na coluna preço_venda positivo, use a seguinte instrução CREATE TABLE :
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    selling_price NUMERIC(10, 2) CHECK (selling_price > 0)
);

# CHECK com nome de restrição
-- A instrução a seguir atribui 'positive_selling_price' como nome da restrição CHECK na coluna 'selling_price'.
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    selling_price NUMERIC(10, 2) CONSTRAINT positive_selling_price CHECK (selling_price > 0)
);