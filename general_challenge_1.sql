# How may payment transaction were greater than 5.00$;
SELECT COUNT(*) FROM payment
	WHERE amount > 5.00;

# HOW many actors have a first name that starts with the letter P?
SELECT COUNT(*) FROM actor
	WHERE first_name LIKE 'P%';

# How many unique districs are our customers from?
SELECT name, DISTINCT district FROM address;

# Retrieve the list of names for those distinc districts
# from the previous question
SELECT DISTINCT district FROM address;

# How many films have a rating of R and a replacement
# cost between $5 and $15
SELECT COUNT(*) from film
	WHERE rating = 'R' AND
	replacement_cost BETWEEN 5 AND 15;

#How many firms have the word Truman somewhere in the title?
SELECT COUNT(*) from film
	WHERE title LIKE '%Truman%';