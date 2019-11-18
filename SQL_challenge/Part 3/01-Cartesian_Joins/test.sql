CREATE TABLE first_table(
	id INT NOT NULL
);

CREATE TABLE second_table(
	id INT NOT NULL
);

SELECT * FROM first_table;
SELECT * FROM second_table;

INSERT INTO first_table(id)
VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
	(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
	(21), (22), (23), (24), (25);

SELECT * FROM first_table;

INSERT INTO second_table(id)
VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);

SELECT * FROM second_table;

SELECT COUNT(*)
FROM first_table;

SELECT COUNT(*)
FROM second_table;

SELECT COUNT(*)
FROM first_table, second_table;

CREATE TABLE table_one(
	id INT NOT NULL);
	
CREATE TABLE table_two(
	id INT NOT NULL);

INSERT INTO table_one(id)
VALUES (1), (2), (3), (4);

SELECT * FROM table_one;

INSERT INTO table_two(id)
VALUES (10), (11), (12);

SELECT * FROM table_two;

SELECT *
FROM table_one, table_two;