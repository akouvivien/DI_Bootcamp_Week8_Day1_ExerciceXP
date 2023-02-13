-- Exercise 1 : Items And Customers
-- 1/Create a database called .public

-- Database: public

-- DROP DATABASE IF EXISTS public;

CREATE DATABASE public
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE public
    IS 'DI_Bootcamp_Week8_Day1_ExerciceXP';
	
	
-- 2/Add two tables:

-- items
-- customers.

CREATE TABLE items (
	id SERIAL PRIMARY KEY,
    libelle varchar(100) NOT NULL,
	price real NOT NULL
);

CREATE TABLE customers  (
    id SERIAL PRIMARY KEY,
    last_name varchar(100) NOT NULL,
	first_name varchar(100) NOT NULL
);

-- Follow the instructions below to determine which columns and data types to add to the two tables:
-- 1/ Add the following items to the items table
INSERT INTO items (libelle,price)
    VALUES ('Small Desk', 100),
			('Large desk', 300),
			('Fan', 80);
	
-- 2/Add 5 new customers to the customers
INSERT INTO customers (last_name, first_name)
    VALUES ('Greg', 'Jones'),
			('Sandra', 'Jones'),
			('Scott', 'Scott'),
			('Trevor', 'Green'),
			('Melanie', 'Johnson');

-- 3/ Use SQL to fetch the following data from the database:
--1/All the items.
SELECT *
FROM items;

-- 2/All the items with a price above 80 (80 not included)
SELECT * FROM items WHERE price > 80;

-- 3/All the items with a price below 300 (300 included)
SELECT * FROM items WHERE price <= 300;

-- 4/All customers whose last name is ‘Smith’ (What will be your outcome?).
SELECT * FROM customers WHERE last_name = 'Smith';


-- 5/All customers whose last name is ‘Jones’.
SELECT * FROM customers WHERE last_name = 'Jones';

-- 6/All customers whose firstname is not ‘Scott’
SELECT * FROM customers WHERE last_name <> 'Scott';


