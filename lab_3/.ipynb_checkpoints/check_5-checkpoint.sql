-- 5. Empty title should fail
BEGIN;
INSERT INTO authors (name, email) VALUES ('Dana', 'dana@example.com');
INSERT INTO posts (author_id, title) VALUES (2, NULL);
SELECT 'SUCCESS' AS message;

ROLLBACK;

