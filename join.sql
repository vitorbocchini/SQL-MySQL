USE sakila;
-- INNER JOIN
-- 
-- Seleciona todos os cadastros da tabela costumer e payment que tenham a mesma costumer_id e payment_id.
SELECT * 
FROM customer
JOIN payment ON customer.customer_id = payment.payment_id;

-- Seleciona da tabela customer o customer_id, first_name e last_name e da payment o rental_id e amount.
SELECT customer.customer_id,
	   customer.first_name,
       customer.last_name,
       payment.rental_id,
       payment.amount
FROM customer
JOIN payment ON customer.customer_id = payment.payment_id;

-- Adiciona alias a consulta anterior.
SELECT cus.customer_id,
	   cus.first_name,
       cus.last_name,
       pay.rental_id,
       pay.amount
FROM customer cus
JOIN payment pay
ON cus.customer_id = pay.payment_id;

-- Adiciona um JOIN a query anterior que seleciona o address da tabela address.
SELECT cus.customer_id,
	   cus.first_name,
       cus.last_name,
       adr.address,
       pay.rental_id,
       pay.amount
FROM customer cus
JOIN payment pay
ON cus.customer_id = pay.payment_id
JOIN address adr
ON cus.customer_id = adr.address_id;

-- LEFT JOIN e RIGHT JOIN
-- Query anterior usando a todos adrress_id
SELECT cus.customer_id,
	   cus.first_name,
       cus.last_name,
       adr.address,
       pay.rental_id,
       pay.amount
FROM customer cus
JOIN payment pay
	ON cus.customer_id = pay.payment_id
RIGHT JOIN address adr
	ON cus.customer_id = adr.address_id;
