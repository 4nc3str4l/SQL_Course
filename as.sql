SELECT payment_id AS my_payments
FROM payment;

SELECT customer_id, SUM(amount) as total_spent
FROM payment
GROUP BY customer_id;