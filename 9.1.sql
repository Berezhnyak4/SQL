START TRANSACTION;
DELETE FROM sample.users WHERE (users.id = '1');
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;

COMMIT;

SELECT * FROM sample.users;
