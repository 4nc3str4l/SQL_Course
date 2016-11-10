CREATE TABLE learn_null( 
	first_name VARCHAR(50),
    sales integer NOT NULL
);

/* Error ! */
INSERT INTO learn_null(first_name)
VALUES('John');