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
