/* Get the days of dates */
SELECT extract(day from payment_date) FROM payment;

SELECT SUM(amount) AS total, extract(month from payment_date) AS month
FROM payment
GROUP BY month
ORDER BY SUM(amount) DESC
LIMIT 1;