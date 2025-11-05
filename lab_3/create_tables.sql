CREATE TABLE authors (
    author_id SERIAL,
    name TEXT,
    email TEXT
);

CREATE TABLE posts (
    post_id SERIAL,
    author_id INTEGER,
    title TEXT,
    content TEXT,
    created_at TIMESTAMP DEFAULT '2025-10-19 14:35:39.995995'
);

CREATE TABLE tags (
    tag_id SERIAL,
    name TEXT
);

CREATE TABLE post_tags (
    post_id INTEGER,
    tag_id INTEGER
);

