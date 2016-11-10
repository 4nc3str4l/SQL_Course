/* Create a virtual table*/
CREATE VIEW customer_info AS
SELECT first_name, last_name, email, address, phone
FROM customer
JOIN address
on customer.address_id = address.address_id;

SELECT * FROM customer_info;

ALTER VIEW customer_info RENAME TO customer_master_list;

DROP VIEW customer_master_list;

DROP VIEW IF EXISTS customer_master_list;