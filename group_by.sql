SELECT customer_id 
FROM payment
GROUP BY customer_id;


/* Sum all ammounts of every customer */
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

SELECT staff_id, COUNT(payment_id)
FROM payment
GROUP BY staff_id;

SELECT rating, COUNT(rating) FROM film 
GROUP BY rating;

SELECT rental_duration, COUNT(rental_duration)
FROM film
GROUP BY rental_duration;

SELECT rating, AVG(rental_rate)
FROM film
GROUP BY rating;

/* Challenges */

/* Challenge 1
We have two staff members with Staff IDs 1 and 2. We want to
give a bonus to the staff member tat handled the most 
payments.
How many payments did each staff member handle? And
how much was the total amount
processed by each staff member
*/

SELECT staff_id, COUNT(amount), SUM(amount)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC;

/* Challenge 2
Corporate headquarters is auditing our store!
They want to know the average replacement cost
of movies by rating
For example, R rated movies have an avera replacement
cost of $20.23
*/
SELECT rating, ROUND(AVG(replacement_cost), 2) 
FROM film
GROUP BY rating;

/*Challenge 3
We want to send coupons to the 5 customers
who have spent the most amount of money.
Get me the customer ids of the top 5 spenders
*/
SELECT customer_id
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;