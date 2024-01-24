CREATE DATABASE relations;
USE relations;

DROP TABLE mountains;
CREATE TABLE mountains(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

DROP TABLE peaks;
CREATE TABLE peaks(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
	mountain_id INT NOT NULL,
    CONSTRAINT fk_peaks_mountains
		FOREIGN KEY (mountain_id)
        REFERENCES mountains(id)
);

INSERT INTO mountains(name) VALUES ("Pirin"), ("Rila");
INSERT INTO peaks(name, mountain_id) VALUES ("Musala", 2);
INSERT INTO peaks(name, mountain_id) VALUES ("Vruh 2", 2);
INSERT INTO peaks(name, mountain_id) VALUES ("Vihren", 3);

SELECT * FROM mountains;
SELECT * FROM peaks;

UPDATE peaks SET mountain_id = 1 WHERE name = 'Vihren';

SELECT * 
FROM peaks
	JOIN mountains ON peaks.mountain_id = mountains.id;

SELECT 
	peaks.id, 
    peaks.name AS 'Peak Name',
    mountains.name AS 'Mountain Name'
FROM peaks
	JOIN mountains ON peaks.mountain_id = mountains.id;

SELECT * FROM peaks WHERE name = 'Musala';
SELECT * FROM mountains WHERE id = 2;

USE camp;
SELECT * FROM campers;
SELECT * FROM vehicles;

SELECT 
	vehicles.driver_id, 
    vehicle_type,
    CONCAT(first_name, ' ', campers.last_name) AS 'driver_name'
FROM vehicles
	JOIN campers ON campers.id = vehicles.driver_id;

SELECT 
	starting_point AS 'route_starting_point',
    end_point AS 'route_end_point',
    leader_id,
    CONCAT(first_name, ' ', last_name) AS 'leader_name'
FROM routes
	JOIN campers ON routes.leader_id = campers.id;
    
USE relations;
SELECT * FROM mountains;
SELECT * FROM peaks;

DELETE FROM mountains WHERE id = 1;

CREATE TABLE peaks(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
	mountain_id INT NOT NULL,
    CONSTRAINT fk_peaks_mountains
		FOREIGN KEY (mountain_id)
        REFERENCES mountains(id)
        ON DELETE CASCADE
);

DELETE FROM peaks WHERE id = 4;
DELETE FROM mountains WHERE id = 2;