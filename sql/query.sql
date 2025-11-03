-- Active: 1760498874497@@127.0.0.1@5432@ph
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL,
    published_year INT  NOT NULL,
    price NUMERIC(6,2),
    class VARCHAR(20)
);

SELECT * FROM books;

INSERT INTO books (title, author, published_year, price, class)
VALUES
('To Kill a Mockingbird', 'Harper Lee', 1960, 12.99, 'Fiction'),
('1984', 'George Orwell', 1949, 10.50, 'Dystopian'),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, 9.75, 'Classic'),
('Pride and Prejudice', 'Jane Austen', 1813, 8.99, 'Romance'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, 11.25, 'Fiction'),
('The Hobbit', 'J.R.R. Tolkien', 1937, 14.99, 'Fantasy'),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 1997, 19.99, 'Fantasy'),
('The Alchemist', 'Paulo Coelho', 1988, 13.50, 'Adventure'),
('The Da Vinci Code', 'Dan Brown', 2003, 15.75, 'Thriller'),
('The Kite Runner', 'Khaled Hosseini', 2003, 12.49, 'Drama');

SELECT title, author FROM books;

SELECT * FROM books
   WHERE published_year > 1900;

SELECT * FROM books
    ORDER BY title DESC;

SELECT * FROM books
    WHERE "class" = 'Fiction'
    LIMIT 1; 

INSERT INTO books (title, author, published_year, price, class) VALUES (
    'bangla', 'NCTB', 2000, 10.10, 'Education' 
)

SELECT * FROM books;

UPDATE books
SET price = 11.11
WHERE title = 'bangla';

DELETE FROM books
WHERE title = 'bangla';

ALTER TABLE books
ADD COLUMN code VARCHAR(10);

ALTER TABLE books
   ALTER COLUMN price TYPE NUMERIC(8,2);

ALTER TABLE books
ALTER COLUMN published_year TYPE NUMERIC(10, 2)

ALTER TABLE books
DROP COLUMN code;

SELECT * FROM books
WHERE title IN ('To Kill a Mockingbird', '1984', 'The Great Gatsby');

SELECT * FROM books
WHERE title LIKE '%The%';