SELECT * 
FROM employees
	JOIN departments ON employees.department_id = departments.id;
    
SELECT * 
FROM employees
	JOIN departments;
    
SELECT *
FROM employees, departments;

SELECT * 
FROM employees
	JOIN departments ON 1 = 1;
    
SELECT * 
FROM employees
	JOIN departments ON employees.department_id = departments.id;
    
SELECT 
	employee_id,
    CONCAT(first_name, ' ', last_name) AS 'full_name',
    departments.department_id,
    name AS 'department_name'
FROM departments
	JOIN employees ON departments.manager_id = employees.employee_id
ORDER BY employee_id
LIMIT 5;

SELECT 
	employee_id,
    CONCAT(first_name, ' ', last_name) AS 'full_name',
    d.department_id,
    name AS 'department_name'
FROM departments AS d
	JOIN employees AS e ON d.manager_id = e.employee_id
ORDER BY employee_id
LIMIT 5;

SELECT employee_id, first_name FROM employees

UNION 

SELECT department_id, name FROM departments;

SELECT * FROM departments;

SELECT 
	name,
    CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM departments AS d
	JOIN employees AS e ON e.employee_id = d.manager_id
WHERE name = 'Sales' OR name = 'Marketing';

SELECT 
	name,
    CONCAT(first_name, ' ', last_name) AS 'full_name'
FROM departments AS d
	JOIN employees AS e ON e.employee_id = d.manager_id
WHERE d.department_id IN (
	SELECT department_id 
	FROM departments
	WHERE name = 'Sales' OR name = 'Marketing'
);

SELECT 'Sales';

SELECT department_id 
FROM departments
WHERE name = (SELECT 'Sales') OR name = 'Marketing';


SELECT COUNT(*) AS 'count'
FROM employees
WHERE salary > (
	SELECT AVG(salary) FROM employees
);

SELECT 
	a.town_id,
    t.name,
    a.address_text
FROM addresses AS a
	JOIN towns AS t ON a.town_id = t.town_id
WHERE t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY a.town_id, a.address_id;

SELECT 
	a.town_id,
    t.name,
    a.address_text
FROM addresses AS a
	INNER JOIN towns AS t 
		ON a.town_id = t.town_id AND 
           t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY a.town_id, a.address_id;

SELECT 
	employee_id,
    first_name,
    last_name,
    department_id,
    salary
FROM employees
WHERE manager_id IS NULL;

SELECT employee_id, AVG(address_id)
FROM employees
HAVING employee_id > AVG(address_id);

SELECT COUNT(*)
FROM employees;

SELECT * FROM employees;

SELECT 
	e.employee_id,
	e.first_name,
    e.last_name,
    p.name
FROM employees AS e
	JOIN employees_projects AS ep ON e.employee_id = ep.employee_id
    JOIN projects AS p ON ep.project_id = p.project_id
ORDER BY e.employee_id;
    
SELECT * 
FROM employees_projects
WHERE employee_id = 1;

SELECT 
	e.employee_id,
    e.first_name,
    e.last_name,
    e.manager_id,
    m.employee_id,
    m.first_name,
	m.last_name
FROM employees AS e
	JOIN employees AS m ON e.manager_id = m.employee_id;




    
