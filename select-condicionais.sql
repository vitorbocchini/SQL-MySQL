-- Selecione o banco de dados sakila para ser usado.
USE sakila;

-- Selecione o id, primeiro e último nome dos atores e coloque por ordem alfabética do primeiro nome.
SELECT actor_id, first_name, last_name
FROM actor
ORDER BY first_name;

-- Filtre a query pelos primeiros 10 id.
SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id <= 10;

-- Seleciona o customer_id 1 e o gasto e crie uma nova coluna onde o gasto tenha 10% de desconto
SELECT customer_id, amount,
	   amount - (amount * 0.10) AS '10% discount'
FROM payment
WHERE customer_id = 1;

-- Seleciona todos os registros da tabela pagamentos onde o gasto seja igual a 0,99
SELECT * FROM payment
WHERE amount = 0.99;

-- Seleciona os endereços localizados na California
SELECT * FROM address
WHERE district = 'California';

-- Seleciona os registros da tabela customer onde o id seja 1 e que eles estejam ativos.
SELECT * FROM customer
WHERE store_id = 1 AND active = 1;

-- Seleciona os registros da tabela payment filtrando o funcionário 1 ou diferentes de 0.99.
SELECT * FROM payment
WHERE staff_id = 1 OR amount != 0.99;

-- Seleciona todos endereços onde os distritos sejam 'Alberta', 'Texas' e 'California' usando o operador IN.
SELECT * FROM address
WHERE district IN ('Alberta', 'Texas', 'California');

-- Seleciona todos os pagamentos onde o valor esteja entre 1.99 e 3.99.
SELECT * FROM payment
WHERE amount 
BETWEEN 1.99 AND 3.99;

-- Seleciona todos atores cujo primeiro nome comece com a letra A. 
SELECT * FROM actor
WHERE first_name LIKE 'A%';

-- Seleciona todos atores cujo primeiro nome termine com a letra O.
SELECT * FROM actor
WHERE first_name LIKE '%o';

-- Verifiqua os registros da tabela address onde a coluna address2 tenha registros nulos.
SELECT * FROM address
WHERE address2 IS NULL;

-- Seleciona os 10 primeiros atores a partir do id 5.
SELECT * FROM actor
LIMIT 4, 10;

-- Seleciona todos atores cujo primeiro nome comece com a letra A e termine com a letra D (usar REGEXP)
SELECT * FROM actor
WHERE first_name REGEXP '^A|D^'; 

-- Seleciona todos atores cujo primeiro nome inicie com a combinação ga, ca e ra.
SELECT * FROM actor
WHERE first_name REGEXP '^[gcr]a';

