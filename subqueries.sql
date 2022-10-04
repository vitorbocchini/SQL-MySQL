USE sakila;
-- Subquery
-- Seleciona todos registros da tabela payment cujas vendas são maiores que a média.
SELECT * 
FROM payment
WHERE amount > (
    SELECT AVG(amount)
    FROM payment);
    
-- Seleciona todos registros da tabela payment onde valor seja igual a compra máxima do customer_id 1
SELECT *
FROM payment
WHERE amount = (
    SELECT MAX(amount)
    FROM payment
    WHERE customer_id = 1);
    
-- Seleciona first_name dos clientes que fizeram mais do que 35 compras.
SELECT *
FROM customer
WHERE customer_id IN (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id 
    HAVING COUNT(*) > 35);
    
-- Mesmo resultado que a query anterior porém utilizando o operador IN
SELECT *
FROM customer
WHERE customer_id = ANY (
	SELECT customer_id
	FROM payment
	GROUP BY customer_id 
    HAVING COUNT(*) > 35);
