-- 1. Duplicate email should fail
BEGIN;
INSERT INTO authors (name, email) VALUES ('Alice', 'alice@example.com');
INSERT INTO authors (name, email) VALUES ('Bob', 'alice@example.com');
SELECT 'SUCCESS' AS message;
ROLLBACK;

