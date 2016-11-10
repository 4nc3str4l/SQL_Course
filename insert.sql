CREATE TABLE link(
	ID serial PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    rel VARCHAR(50)
);

INSERT INTO LINK(url, name)
VALUES
('WWW.google.es', 'Google');

INSERT INTO LINK(url, name)
VALUES
('www.google.com', 'Google2'),
('www.amazon.com', 'Amazon');