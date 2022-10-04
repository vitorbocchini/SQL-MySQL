USE sakila;

-- Funções de agregação.
-- MAX, MIN, AVG.
SELECT
	MAX(amount) AS 'Maior Venda',
    MIN(amount) AS 'Menor Venda',
    AVG(Amount) AS 'Média de Vendas'
FROM payment;

-- COUNT e SUM
SELECT 
	SUM(amount) AS 'Total de Vendas',
    COUNT(amount) AS 'Número de Vendas'
FROM payment
WHERE staff_id = 1

UNION

SELECT 
	SUM(amount) AS 'Total de Vendas',
    COUNT(amount) AS 'Número de Vendas'
FROM payment
WHERE staff_id = 2;

-- Seleciona os 10 clientes que mais gastaram.
SELECT 
	cus.customer_id AS ID,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
ORDER BY total DESC
LIMIT 10;
