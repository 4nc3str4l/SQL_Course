/* All the names that starts with Jen */
SELECT * FROM CUSTOMER
	WHERE first_name LIKE 'Jen%';

/* Only one character */
SELECT * FROM CUSTOMER
	WHERE first_name LIKE 'Jenn_';

SELECT * FROM CUSTOMER
	WHERE first_name LIKE '%y%';

/* not Case sen */
SELECT * FROM CUSTOMER
	WHERE first_name ILIKE '%Y%';