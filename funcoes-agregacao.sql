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

-- Seleciona os clientes que gastaram mais que $150 e mais de 40 compras.
SELECT 
	cus.customer_id AS ID,
    cus.first_name AS Nome,
    cus.last_name AS Sobrenome,
    SUM(amount) AS Total,
    COUNT(Amount) AS Compras
FROM payment pay
JOIN customer cus USING(customer_id)
GROUP BY customer_id
HAVING Total >= 150 AND Compras >= 40
ORDER BY total DESC;

