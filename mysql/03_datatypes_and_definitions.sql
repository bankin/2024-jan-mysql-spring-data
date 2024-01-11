SELECT * FROM employees;

CREATE TABLE people (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE people_reverse (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

USE gamebar;

SELECT first_name, last_name
FROM gamebar.employees
LIMIT 2; 

CREATE TABLE employees(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE categories(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE products(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    category_id INT NOT NULL
);

INSERT INTO employees VALUES (10, "Query", NULL);

INSERT INTO employees (first_name, last_name) 
VALUES 
	("Field", "List"),
    ("Second", "Entry"),
    ("Third", "Employee");

SELECT * FROM employees;

SELECT first_name, middle_name, last_name
FROM employees;

ALTER TABLE employees
ADD COLUMN middle2_name VARCHAR(50) NOT NULL AFTER first_name;

ALTER TABLE employees
MODIFY COLUMN middle_name VARCHAR(100);

