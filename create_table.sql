CREATE TABLE account(
user_id serial PRIMARY KEY,
username VARCHAR (50) UNIQUE NOT NULL,
password VARCHAR (50) NOT NULL,
email VARCHAR (355) UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP
);

CREATE TABLE role(
role_id serial PRIMARY KEY,
role_name VARCHAR (255) UNIQUE NOT NULL
);

CREATE TABLE account_role
(
  user_id integer NOT NULL,
  role_id integer NOT NULL,
  grant_date timestamp without time zone,
  PRIMARY KEY (user_id, role_id),
  CONSTRAINT account_role_role_id_fkey FOREIGN KEY (role_id)
      REFERENCES role (role_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT account_role_user_id_fkey FOREIGN KEY (user_id)
      REFERENCES account (user_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)

/* Challenge :
	Create a table to organize our potential leads! We will 
	have the following information:

	A customer's first name, last name,email,sign-up date, 
	and number of minutes spent on the dvd rental site. 
	You should also have some sort of id tracker for them. 
	You have free reign on how you want to create this table.
*/

CREATE TABLE leads(
	user_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    minutes integer NOT NULL,
    sign_up_ts TIMESTAMP NOT NULL
);