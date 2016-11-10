/* Create a new id based on and addion of ids */
SELECT customer_id+rental_id as new_id FROM payment;

SELECT round(AVG(amount), 2)
FROM payment;