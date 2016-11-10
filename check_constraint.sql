CREATE TABLE new_user(
	id serial PRIMARY KEY,
    first_name VARCHAR(50),
    birth_date DATE CHECK(birth_date > '1900-01-01'),
    join_date DATE CHECK(join_date > birth_date),
    salary integer CHECK(salary > 0)
);