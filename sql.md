SQL
===
Short for Structured Query Language, SQL is a programming language used to communicate with relational databases by writing requests in a specific format i.e. queries, that return data from the database or change it in some way. SQL is formed of three parts Data Definition Language, Data Manipulation Language and Data Control Language.
We are primarily concerned with the Data Manipulation Language which at its most basic, is used to perform CREATE, READ, UPDATE and DELETE operations on the database.
CRUD
===
CRUD, an unpleasant acronym often referred to in database theory, represents the four main actions that users can carry out when working within a SQL context. It stands for:

CREATE
READ
UPDATE
DELETE

CREATE - performed using the INSERT command, this action means inserting new entries into a table.
```
INSERT INTO table
VALUES ('value1', 'value2')
```
READ - also sometimes referred to as ‘retrieve’ and performed using the SELECT command, this part of the acronym refers to bringing up existing entries for review, an essential database function.
```
SELECT * FROM table
```
UPDATE - performed using the UPDATE command, this refers to the act of changing entries within the database’s table.
```
UPDATE table
SET column = new_value
WHERE column = old_value
```
DELETE - this uses the DELETE command and means removing a row (entry) from the table.
```
DELETE FROM table
WHERE column = value
```
