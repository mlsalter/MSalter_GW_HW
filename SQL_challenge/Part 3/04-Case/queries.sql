DROP TABLE IF EXISTS animal;

CREATE TABLE animal(
	id SERIAL NOT NULL PRIMARY KEY,
	animal_name VARCHAR(225) NOT NULL,
	species VARCHAR(225) NOT NULL
);

SELECT * FROM animal;

INSERT INTO animal(animal_name, species)
VALUES ('Mickey Mouse', 'duck'),
	('Minnie Mouse', 'duck'),
	('Donald Duck', 'mouse');
	
SELECT * FROM animal;

UPDATE animal
SET species = 'mouse'
WHERE animal_name LIKE '%Mouse';

UPDATE animal
SET species = 'duck'
WHERE animal_name LIKE '%Duck';

SELECT * FROM animal;

