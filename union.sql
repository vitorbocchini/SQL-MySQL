USE sakila

-- Seleciona os clientes que gastam mais que 10.99 e mostre-os como 'vip'
-- UNION
SELECT 
    cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.rental_id,
    pay.amount,
    'VIP' AS Status
FROM customer cus
JOIN payment pay
	ON cus.customer_id = pay.payment_id
	WHERE pay.amount >= 10.00

UNION
  
SELECT 
    cus.customer_id,
    cus.first_name,
    cus.last_name,
    pay.rental_id,
    pay.amount,
    'NON VIP' AS Status
FROM customer cus
JOIN payment pay
	ON cus.customer_id = pay.payment_id
	WHERE pay.amount < 10.00;
