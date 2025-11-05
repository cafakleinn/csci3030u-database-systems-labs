-- 4. Post-tag duplicate relationship should fail
BEGIN;
INSERT INTO authors (name, email) VALUES ('Charlie', 'charlie@example.com');
INSERT INTO posts (author_id, title) VALUES (1, 'Sample Post');
INSERT INTO tags (name) VALUES ('sql');
INSERT INTO post_tags (post_id, tag_id) VALUES (1, 1);
INSERT INTO post_tags (post_id, tag_id) VALUES (1, 1);  -- should fail
SELECT 'SUCCESS' AS message;

ROLLBACK;

