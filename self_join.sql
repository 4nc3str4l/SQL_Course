/*
	Joins the table with itself
	Possible aplicaiton:
	imagine that we want to find
	the employees that their location
	are the same than once employee
*/

SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name 
FROM customer AS a, customer AS b
WHERE a.first_name = b.last_name
ORDER BY a.customer_id;

/* Same query */
SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name 
FROM customer AS a
JOIN customer AS b
ON a.first_name = b.last_name
ORDER BY a.customer_id;

/* We can use another types of joins */
SELECT a.customer_id, a.first_name, a.last_name, b.customer_id, b.first_name, b.last_name 
FROM customer AS a
LEFT OUTER JOIN customer AS b
ON a.first_name = b.last_name
ORDER BY a.customer_id;

/* Check: Manager employee self join */