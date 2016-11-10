# Select all the customers which name is Jamie
SELECT * FROM customer WHERE first_name = 'Jamie';

# Select all the customers which name is Jamie and last name is Rice
SELECT * FROM customer WHERE first_name = 'Jamie' and last_name = 'Rice';

# Examples:
SELECT * FROM customer
	WHERE first_name = 'Jared';


SELECT * FROM payment
	WHERE amount > 5;


SELECT amount, payment_date FROM payment
	WHERE amount > 5;

SELECT amount, payment_date FROM payment
	WHERE amount > 5 OR amount = 1.99;


SELECT * FROM customer
	WHERE store_id = 1 AND address_id > 5;


# Callenges
SELECT email FROM customer
	WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description FROM  film
	WHERE title = 'Outlaw Hanky';

SELECT phone FROM address
	WHERE address = '259 Ipoh Drive';