SELECT title, author FROM books
WHERE genre = 'Tech'

SELECT title, price FROM books
WHERE price > 20;

SELECT title, price FROM books
WHERE genre = 'Tech' AND price > 30;

SELECT title, genre FROM books
WHERE genre = 'Fantasy' OR price < 10;