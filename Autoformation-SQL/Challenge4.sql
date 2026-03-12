--1.Setup:
CREATE TABLE categories(
    id INT PRIMARY KEY ,
    name VARCHAR(100) 
);
--2.Link:
ALTER TABLE library_books ADD category_id INT;
--3.Action
INSERT INTO categories (id, name) VALUES
(1, 'Programming'),
(2, 'Database'),
(3, 'Artificial Intelligence'),
(4, 'Web Development');

UPDATE library_books set category_id=1 
WHERE title IN ('Mastering Python', 'PHP for Beginners', 'Advanced PHP Techniques');

UPDATE library_books set category_id=2
WHERE title IN ('Learn SQL Fast','Data Structures 101');

UPDATE library_books set category_id=4
WHERE title IN ('Web Development Guide', 'JavaScript Essentials');

UPDATE library_books SET category_id = 3
WHERE title = 'Intro to AI';
--4.The Query:
SELECT l.title , c.name
from library_books l
INNER JOIN categories c WHERE l.category_id = c.id; 
