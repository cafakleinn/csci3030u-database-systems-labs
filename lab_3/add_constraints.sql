--
-- the ALTER TABLE statements go here
--

-- Authors: Unique email:
ALTER TABLE authors
ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id),
ADD CONSTRAINT authors_email_key UNIQUE (email);

-- Posts: Link to authors, not null title:
ALTER TABLE posts
ADD CONSTRAINT posts_pkey PRIMARY KEY (post_id),
ADD CONSTRAINT posts_author_id_fkey FOREIGN KEY (author_id)
    REFERENCES authors(author_id)
    ON DELETE CASCADE,
ALTER COLUMN title SET NOT NULL;

-- TAGS: Unique Name:
ALTER TABLE tags
ADD CONSTRAINT tags_pkey PRIMARY KEY (tag_id),
ADD CONSTRAINT tags_name_key UNIQUE (name);

-- POST_TAGS: Link posts and tags while avoiding duplicates:
ALTER TABLE post_tags
ADD CONSTRAINT post_tags_pkey PRIMARY KEY (post_id, tag_id),
ADD CONSTRAINT post_tags_post_id_fkey FOREIGN KEY (post_id)
    REFERENCES posts(post_id)
    ON DELETE CASCADE,
ADD CONSTRAINT post_tags_tag_id_fkey FOREIGN KEY (tag_id)
    REFERENCES tags(tag_id)
    ON DELETE CASCADE;