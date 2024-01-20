SELECT * FROM departments;

SELECT * FROM employees;

SELECT *
FROM employees
GROUP BY department_id;

SELECT department_id, SUM(salary)
FROM employees
GROUP BY department_id;

SELECT department_id, COUNT(id) AS 'Number of employees'
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT COUNT(id) FROM employees;

SELECT * FROM hotel.clients;
SELECT COUNT(id) FROM hotel.clients;
SELECT COUNT(first_name) FROM hotel.clients;
SELECT COUNT(*) FROM hotel.clients;

CREATE TABLE `test_null_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `department_id` int NOT NULL,
  PRIMARY KEY (`id`)
);

SELECT department_id, SUM(int_value)
FROM test_null_values
GROUP BY department_id;

SELECT department_id, MAX(salary)
FROM test_null_values
GROUP BY department_id;

SELECT department_id, MIN(salary)
FROM test_null_values
GROUP BY department_id;

SELECT department_id, AVG(salary)
FROM test_null_values
GROUP BY department_id;

SELECT department_id, ROUND(AVG(salary), 2)
FROM employees
GROUP BY department_id
ORDER BY department_id;

SELECT 
	department_id AS 'Dep', 
    MIN(salary) AS 'MinSalary'
FROM employees
GROUP BY department_id
HAVING `MinSalary` > 800;

SELECT * FROM categories;

SELECT * FROM products;

SELECT COUNT(*)
FROM products
WHERE category_id = 2 AND price > 8;

SELECT 
	category_id,
    FORMAT(AVG(price), 2) AS 'Average Price',
    ROUND(MIN(price), 2) AS 'Cheapest Product',
    MAX(price) AS 'Most Expensive Product'
FROM products
GROUP BY category_id;

SELECT COUNT(category_id)
FROM products;

SELECT COUNT(DISTINCT category_id)
FROM products;

SELECT DISTINCT category_id
FROM products;

SELECT 
	category_id,
    ROUND(AVG(price),2) AS "Average Price", 
    ROUND(MIN(price),2) AS "Cheapest Product", 
    ROUND(MAX(price),2) AS "Most Expensive Product" 
FROM products;

SELECT * FROM products;

SELECT *
FROM products
WHERE 
	name LIKE 'L%' OR
    name LIKE 'T%' OR
    name LIKE 'B%';
    
SELECT *
FROM products
WHERE name REGEXP '^[btl]';
