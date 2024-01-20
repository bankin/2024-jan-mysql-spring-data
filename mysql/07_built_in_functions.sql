SELECT 
	CONCAT(first_name, last_name)
FROM employees
WHERE first_name = CONCAT('Ja', 'ck');

SELECT * FROM employees WHERE first_name = 'Jack';

SELECT * FROM employees;

INSERT INTO employees(first_name)
VALUES (CONCAT('Mr. ', 'Pesho'));

UPDATE employees
SET first_name = CONCAT('value ', 'alabala')
WHERE id = 9;

SELECT CONCAT('Value', ' Other');

SELECT SUBSTRING('Very Long Text', 4, 5);
SELECT SUBSTRING('Very Long Text' FROM 4 FOR 5);
SELECT SUBSTR('Very Long Text' FROM 4 FOR 5);

SELECT SUBSTRING(title, 1, 20)
FROM books;

SELECT CONCAT(SUBSTRING(title, 1, 20), '...')
FROM books;

SELECT title
FROM books
WHERE SUBSTRING(title, 1, 4) = 'the '
ORDER BY id;

SELECT 
	REPLACE(REPLACE('Some string', 's', 'WORKS'), 'S', 'works');
    
SELECT 
	REPLACE(title, 'The', '***') AS 'title'
FROM books
WHERE SUBSTR(title, 1, 4) = 'The ';

SELECT LTRIM('    after spaces');
SELECT LTRIM('			after tabs');
SELECT LTRIM('

after newline');

SELECT RTRIM('    alabala    ');
SELECT LTRIM('    alabala    ');
SELECT RTRIM(LTRIM('    alabala    '));

SELECT LENGTH(title), CHAR_LENGTH(title)
FROM books;

SELECT LENGTH('асд'), CHAR_LENGTH('асд');

SELECT SUBSTRING('Pesho', 1, 3) = LEFT('Pesho', 3);
SELECT SUBSTRING('Pesho', -3) = RIGHT('Pesho', 3);

SELECT LOWER('Hello'), UPPER('Hello');

SELECT REVERSE('Hello');

SELECT REPEAT('Hello', 4);

SELECT *
FROM books
WHERE LOCATE('the', title, 2) > 0;

SELECT * 
FROM books
WHERE LOCATE('the', title) = 0;

SELECT INSERT('Some text', 3, 2, 're');
SELECT INSERT('Some text', 3, 6, 're');
SELECT INSERT('Some text', 3, 0, 're');

SELECT 7 DIV 2, 7 / 2;
SELECT 7 MOD 2;
SELECT 16 MOD 2;
SELECT 28 MOD 5;

-- 25 / 5 = 5 (0)
-- 26 / 5 = 5 (1)
-- 27 / 5 = 5 (2)
-- 28 / 5 = 5 (3)
-- 29 / 5 = 5 (4)
-- 30 / 5 = 6 (0)

SELECT PI();
SELECT ABS(-10), ABS(10);

SELECT SQRT(16), SQRT(2);

SELECT POW(2, 5), POW(14, 7);

SELECT CONV(14, 10, 2);
SELECT CONV(1110, 2, 10);

SELECT ROUND(2.67), ROUND(2.67, 1), ROUND(2.67, 2), ROUND(2.67, 3);
SELECT 
	ROUND(156.37, -2), 
    ROUND(156.37, -1), 
    ROUND(156.37), 
    ROUND(156.37, 1), 
    ROUND(156.37, 2);

SELECT FLOOR(1.2), CEILING(1.2);
SELECT FLOOR(-3.4), CEILING(-3.4);

SELECT SIGN(7), SIGN(0), SIGN(-9);

SELECT FLOOR(RAND() * 6);

-- [0, 1) * 6
-- [0, 6) -> CEILING [1; 6]
-- [0, 6) -> FLOOR [0; 5]
-- [0, 1, 2, 3, 4, 5]

SELECT FLOOR(RAND() * 14) + 13;

-- [0; 1) * 28
-- [0; 27] + 13
-- [13; 40]

-- [0; 1) * 14
-- [0; 14] + 13
-- [13; 27]

-- [min; max]
-- SELECT FLOOR(RAND() * (max - min)) + min; 

SELECT 
	title,
    ROUND(cost, 1)
FROM books;

SELECT 
	title,
    EXTRACT(DAY_MINUTE FROM year_of_release)
FROM books;

SELECT TIMESTAMPDIFF(DAY, '2024-01-01', '2024-01-16');
SELECT YEAR('2024-01-01'), EXTRACT(YEAR FROM '2024-01-01');

SELECT 
	CONCAT(first_name, ' ', last_name) AS 'Full Name',
	ABS(TIMESTAMPDIFF(DAY, died, born)) AS 'Days Lived'
FROM authors;

SELECT TIMESTAMPDIFF(YEAR, '1236-01-01', '2000-01-01');

SELECT * FROM books;

SELECT 
	title,
    DATE_FORMAT(year_of_release, '%Y-%c/%e'),
	DATE_FORMAT(year_of_release, '%y [%m] %d')
FROM books;

SELECT NOW();
SELECT DATE_FORMAT(NOW(), '%Y-%c/%e');

SELECT * 
FROM books
WHERE title LIKE '_%the%';

SELECT *
FROM books
WHERE title LIKE 'a%' OR title LIKE 'b%' OR title LIKE 'c%';

SELECT title
FROM books
WHERE title LIKE 'Harry Potter%'
ORDER BY id;

SELECT *
FROM books
WHERE title REGEXP '^\[^K\]{3}\$';

SELECT ROUND(SUM(cost), 2)
FROM books;

