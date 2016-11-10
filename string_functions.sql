/* Concatenation */
SELECT first_name || ' ' || last_name as full_name FROM customer;

/* Length string */
SELECT first_name, char_length(first_name)
FROM customer;

/* Lowercase */
SELECT first_name, lower(first_name)
FROM customer;