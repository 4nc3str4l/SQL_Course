/*Intersection between sets*/
SELECT 
	customer.customer_id,
	first_name,
	last_name,
	email,
	amount,
	payment_date
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id;

SELECT customer.customer_id,
	first_name,
	last_name,
	email,
	amount,
	payment_date
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
ORDER BY customer.customer_id;


SELECT customer.customer_id,
	first_name,
	last_name,
	email,
	amount,
	payment_date
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
WHERE customer.customer_id = 2;

SELECT customer.customer_id,
	first_name,
	last_name,
	email,
	amount,
	payment_date
FROM customer
INNER JOIN payment ON payment.customer_id = customer.customer_id
WHERE first_name LIKE 'A%';


SELECT payment_id, amount, first_name, last_name
FROM payment
INNER JOIN staff ON payment.staff_id = staff.staff_id;

SELECT store_id, title FROM inventory
INNER JOIN film ON inventory.film_id = film.film_id;

SELECT title, COUNT(title) FROM inventory
INNER JOIN film ON inventory.film_id = film.film_id
WHERE store_id = 1
GROUP BY title;

SELECT title, COUNT(title) AS copies_at_store_1
FROM inventory
INNER JOIN film ON inventory.film_id = film.film_id
WHERE store_id = 1
GROUP BY title
ORDER BY title;

SELECT film.title, language.name AS movie_language
FROM film
INNER JOIN language ON language.language_id = film.language_id;

SELECT film.title, lan.name AS movie_language
FROM film
INNER JOIN language AS lan ON lan.language_id = film.language_id;

/*AS is not necessary*/
SELECT film.title, lan.name movie_language
FROM film
INNER JOIN language lan ON lan.language_id = film.language_id;