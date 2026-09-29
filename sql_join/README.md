


SQL - Joins & Relationships
Description
This project introduces SQL joins and relationships between multiple tables.

Unlike previous SQL projects that focused on manipulating data from a single table, this project works with related tables and uses keys to connect them.

The project covers:

Primary keys

Foreign keys

Referential integrity

One-to-one relationships (1–1)

One-to-many relationships (1–N)

Many-to-many relationships (N–N)

Junction tables

INNER JOIN

LEFT JOIN

CROSS JOIN

NULL values in joins

Subqueries

The goal is to understand how tables are related and how SQL joins can be used to combine data from these related tables.

Learning Objectives
At the end of this project, I should be able to:

Understand 1–1, 1–N, and N–N relationships.

Distinguish between primary keys and foreign keys.

Understand referential integrity conceptually.

Write queries using:

INNER JOIN

LEFT JOIN

CROSS JOIN

Interpret NULL values in outer joins.

Work with junction tables.

Use subqueries for filtering and comparisons.

Understand how joins reconstruct relationships between tables.

Database Structure
The project uses the library.db SQLite database.

authors
id

name

country

books
id

title

author_id

price

Relationship:

books.author_id references authors.id.

This represents a one-to-many relationship:

one author can write multiple books.

students
id

name

courses
id

title

enrollments
student_id

course_id

The enrollments table is a junction table connecting students and courses.

Relationships:

enrollments.student_id references students.id

enrollments.course_id references courses.id

This represents a many-to-many relationship between students and courses.

Key Concepts
Primary Key
A primary key uniquely identifies each row in a table.

Example:

id INTEGER PRIMARY KEY
Foreign Key
A foreign key is a column that references the primary key of another table.

Example:

books.author_id → authors.id

SQL Joins
INNER JOIN
Returns only rows with matching values in both tables.

Example:

SELECT books.title, authors.name
FROM books
INNER JOIN authors
ON books.author_id = authors.id;
LEFT JOIN
Returns all rows from the left table, including rows without a matching row in the right table.

When there is no match, columns from the right table contain NULL.

CROSS JOIN
Returns all possible combinations of rows from two tables.

Subqueries
A subquery is a query inside another query.

Subqueries can be used for filtering and comparisons.

Example:

SELECT title
FROM books
WHERE author_id IN (
    SELECT id
    FROM authors
    WHERE country = 'UK'
);
Requirements
Ubuntu 20.04

SQLite 3.x

Each task must be a .sql file.

Each task must contain a single query unless otherwise specified.

Results must match the expected output exactly.

Use an explicit ORDER BY when required.

Do not modify the database schema unless instructed.

Do not use unsupported SQL features.

SQLite does not support:

RIGHT JOIN

FULL OUTER JOIN

Execution
sqlite3 library.db < file.sql
Resources
https://www.sqlite.org/lang_select.html

https://www.sqlite.org/foreignkeys.html

https://www.sqlite.org/lang_expr.html

https://www.w3schools.com/sql/sql_join.asp

Author
Thomas