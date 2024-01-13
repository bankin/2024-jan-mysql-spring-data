SELECT id, first_name, last_name, job_title
FROM employees
ORDER BY first_name, last_name;

SELECT 
	e.id AS 'No. ', 
    e.first_name AS 'First Name',
    e.last_name AS 'Last Name', 
    e.job_title AS 'Job Title'
FROM `hotel`.employees AS e
ORDER BY id;

CREATE TABLE test_employees(
	id INT,
    `from` VARCHAR(40),
    `concat` VARCHAR(40)
);


SELECT 
	CONCAT('#', id, ' -> ', first_name, ' ', last_name) AS 'Details'
FROM employees;

SELECT * FROM rooms;
SELECT * FROM clients;

SELECT *
FROM clients, rooms;


SELECT 
	CONCAT_WS(' ', first_name, last_name, job_title) AS 'Details'
FROM employees;

SELECT
	CONCAT(first_name, ' ', last_name) AS 'CONCAT',
    CONCAT_WS(' ', first_name, last_name) AS 'CONCAT_WS'
FROM clients;

SELECT
	id,
    CONCAT(first_name, ' ', last_name) AS 'full_name',
    job_title,
    salary
FROM employees
WHERE salary > 1000
ORDER BY id;

SELECT 
	DISTINCT first_name
FROM employees;

SELECT *
FROM employees
WHERE salary > 1100 AND salary < 2000;

SELECT *
FROM employees
WHERE salary BETWEEN 1100 AND 2000;

SELECT 
	DISTINCT department_id
FROM employees
WHERE salary < 1500;

SELECT *
FROM departments
WHERE id NOT IN (1, 2, 3);

SELECT *
FROM employees
WHERE NOT department_id = 1;

SELECT *
FROM employees
WHERE salary > 1100 AND salary < 2000;

SELECT *
FROM employees
WHERE department_id = 4 AND salary >= 1000
ORDER BY id DESC, first_name, last_name DESC;

SELECT * 
FROM clients
WHERE first_name IS NOT NULL;

CREATE VIEW v_employee_summary AS
	SELECT
		id,
		CONCAT(first_name, ' ', last_name) AS 'Full Name',
		job_title,
		salary
	FROM employees
	WHERE salary > 1000
	ORDER BY first_name, last_name;
    
SELECT *
FROM v_employee_summary;

CREATE VIEW v_employee_summary AS
	SELECT
		id,
		CONCAT(first_name, ' ', last_name) AS 'Full Name',
		job_title,
		salary
	FROM employees
	WHERE salary > 1000
	ORDER BY first_name, last_name;
    
DROP VIEW v_employee_summary;

DROP TABLE employees;

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1;

CREATE VIEW v_top_paid_employee AS
	SELECT *
    FROM employees
    ORDER BY salary DESC
    LIMIT 1;

SELECT * FROM v_top_paid_employee;

CREATE TABLE test_clients AS 
	SELECT id, first_name, room_id 
    FROM clients
    WHERE first_name IS NOT NULL;
    
SELECT * FROM test_clients;

SELECT room_id, first_name
    FROM clients;

INSERT INTO test_clients(first_name, room_id)
	SELECT first_name, room_id
    FROM clients
    WHERE first_name IS NOT NULL;


UPDATE test_clients
SET 
	id = 3,
    first_name = CONCAT('Updated ', first_name)
WHERE first_name = 'Gosho';

UPDATE employees
SET
	salary = salary + 100
WHERE 
	job_title = 'Manager';

SELECT *
FROM employees;

DELETE FROM employees
WHERE department_id = 1 OR department_id = 2;

SELECT *
FROM employees
ORDER BY id;

DELETE FROM employees
WHERE department_id BETWEEN 1 AND 2;

UPDATE employees
SET salary = 100;