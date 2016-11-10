/* Order by first name ascendent */
SELECT first_name, last_name FROM customer
	ORDER BY first_name ASC;

SELECT first_name, last_name FROM customer
	ORDER BY last_name DESC;

/* Order first by first name and then by last name */
SELECT first_name, last_name FROM customer
	ORDER BY first_name ASC,
		last_name DESC;

/* Order by something that is not selected (doesn't work with all database) */
SELECT first_name FROM customer
	ORDER BY last_name;

/* Challenge:
 Get the top ten payments with highest ammounts */
SELECT customer_id FROM payment
	ORDER BY amount DESC LIMIT 10;

/* Get the titles of the movies with film ids 1-5 */
SELECT title FROM film
	ORDER BY film_id ASC
		LIMIT 5;