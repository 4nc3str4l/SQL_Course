/* Complete the following tasks
1. Return the customer IDs of customers who have
spend at least $110 with the staff member who has
an id of 2*/
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;

/*2. How many films begin with the letter J? */
SELECT COUNT(title)
FROM film
WHERE title LIKE 'J%';

/* 3. What customer has the highest customer ID number
whose namestarts with and E and has an address ID lower
than 500 */

SELECT first_name, last_name
FROM customer
WHERE address_id < 500 AND first_name LIKE 'E%'
ORDER BY customer_id DESC
LIMIT 1;