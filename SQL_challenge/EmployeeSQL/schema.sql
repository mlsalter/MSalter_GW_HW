DROP TABLE IF EXISTS dept;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_mang;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS salary;

--create tables to hold data imported from csv's
CREATE TABLE dept(
	deptid VARCHAR(4) NOT NULL PRIMARY KEY,
	deptname VARCHAR(18) NOT NULL
);

SELECT * FROM dept;

CREATE TABLE employee(
	employeeid INT NOT NULL PRIMARY KEY,
	birthdate DATE NOT NULL,
	first_name VARCHAR(14) NOT NULL,
	last_name VARCHAR(16) NOT NULL,
	gender VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL
);

SELECT * FROM employee;

CREATE TABLE dept_emp(
	employeeid INT NOT NULL,
	deptid VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

SELECT * FROM dept_emp;

CREATE TABLE dept_mang(
	deptid VARCHAR (4) NOT NULL,
	employeeid INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);

SELECT * FROM dept_mang;

CREATE TABLE titles(
	employeeid INT NOT NULL,
	title VARCHAR NOT NULL,
	from_date DATE,
	to_date DATE
);

SELECT * FROM titles;

CREATE TABLE salary(
	employeeid INT NOT NULL,
	salary INT NOT NULL,
	from_date DATE,
	to_date DATE
);
	
SELECT * FROM salary;

-- Import data from csvs to corresponding tables
-- Check to ensure data has been accurately imported
SELECT * FROM dept;
SELECT * FROM employee;
SELECT * FROM dept_emp;
SELECT * FROM dept_mang;
SELECT * FROM titles;
SELECT * FROM salary;
