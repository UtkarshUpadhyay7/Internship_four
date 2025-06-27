SELECT SUM(price) AS total_price FROM books;
SELECT AVG(price) AS average_price FROM books;
SELECT MIN(price), MAX(price) FROM books;
SELECT COUNT(price) AS count_priced_books FROM books;
SELECT COUNT(*) AS total_books FROM books;


SELECT author_name, SUM(price) AS total_price
FROM books
GROUP BY author_name;

SELECT author_name, SUM(price) AS total_price
FROM books
GROUP BY author_name
HAVING SUM(price) > 120;
