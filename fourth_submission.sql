-- 1.Apply aggregate functions on numeric columns
use library;
SELECT SUM(price) AS total_price FROM books;
SELECT AVG(price) AS average_price FROM books;
SELECT MIN(price) AS min_price, MAX(price) AS max_price FROM books;
SELECT COUNT(price) AS count_priced_books FROM books;
SELECT COUNT(*) AS total_books FROM books;

-- 2.Use GROUP BY to categorize
SELECT author_name, SUM(price) AS total_price
FROM books
GROUP BY author_name;

-- 3.Filter groups using HAVING
SELECT author_name, SUM(price) AS total_price
FROM books
GROUP BY author_name
HAVING SUM(price) > 120;


