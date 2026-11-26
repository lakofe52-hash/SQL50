-- 1148. Article Views I
-- Runtime = 479 ms
-- Goal: Find all the authors that viewed at least one of their own articles in ascending order

SELECT DISTINCT author_id AS id -- Because there are times when the value repeats (since there is no primary key), we use DISTINCT to only display the values (author_id) that are repeating, and we also use AS to rename the column name from author_id to just id
FROM Views -- To select the Views Table
WHERE author_id = viewer_id -- The condition to compare if author_id is equal to viewer_id (is the author viewing one of his articles)
ORDER BY author_id ASC -- This is to order the author_id or id in an ascending order