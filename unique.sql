CREATE TABLE people(
	id serial PRIMARY KEY,
    first_name VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

/* Error */
INSERT INTO people(first_name, email)
VALUES
('John', 'email@email.com'),
('John', 'email@email.com');