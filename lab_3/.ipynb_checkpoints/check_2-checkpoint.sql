-- 2. Post with invalid author_id should fail
BEGIN;
INSERT INTO posts (author_id, title, content) VALUES (999, 'Orphan post', 'Invalid author');
SELECT 'SUCCESS' AS message;

ROLLBACK;

