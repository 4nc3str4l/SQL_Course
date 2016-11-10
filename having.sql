SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;


SELECT rating, AVG(rental_rate)
FROM film
WHERE rating IN ('R', 'G', 'PG')
GROUP BY rating;


SELECT rating, AVG(rental_rate)
FROM film
WHERE rating IN ('R', 'G', 'PG')
GROUP BY rating
HAVING AVG(rental_rate) < 3;

/* Challenge 1:
We want to know what customers are eligible
for our platinum credit card. The requirements
are that the custmer has at least a total of 40
transaction payments.

What customers(by_customer_id) are eligible for
the credit card?
*/
SELECT customer_id,COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) >= 40;

/*Challenge 2:
When grouped by rating, what movie ratings
have an average rental duration of more than
5 days?
*/
SELECT rating, AVG(rental_duration)
FROM film
GROUP BY rating
HAVING AVG(rental_duration) > 5;

