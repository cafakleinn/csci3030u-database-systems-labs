-- 3. Tag with duplicate name should fail
BEGIN;
INSERT INTO tags (name) VALUES ('database');
INSERT INTO tags (name) VALUES ('database');
SELECT 'SUCCESS' AS message;

ROLLBACK;

