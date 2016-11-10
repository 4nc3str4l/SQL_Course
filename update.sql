UPDATE link
SET description = 'Empty Description';

UPDATE link
SET description = 'Name starts with an A'
WHERE name LIKE 'A%';

/* returns affected rows */
UPDATE link
SET description = 'Name starts with an A'
WHERE name LIKE 'A%'
RETURNING *;