DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS employees;

CREATE TABLE departments(
	id INT NOT NULL PRIMARY KEY,
	dept_name VARCHAR(225) NOT NULL
);

CREATE TABLE employees(
	employee_id INT NOT NULL,
	first_name VARCHAR(225) NOT NULL,
	last_name VARCHAR(225) NOT NULL,
	department_id INT NOT NULL,
	FOREIGN KEY (department_id) REFERENCES departments(id)
);

SELECT * FROM departments;
SELECT * FROM employees;

INSERT INTO departments(id, dept_name)
VALUES (45, 'webdev')
		(25, 'Sales');

INSERT INTO employees(employee_id, first_name, last_name, department_id)
VALUES(14, 'Jan', 'Jansson', 45),
	(17, 'Sam', 'Samuels', 45),
	(3, 'Chris', 'Christian', 25);

SELECT * FROM departments;
SELECT * FROM employees;

ALTER TABLE employees
RENAME department_id TO dept_id;

SELECT * FROM employees;

ALTER TABLE employees
ADD annual_salary INT;

SELECT * FROM employees;
