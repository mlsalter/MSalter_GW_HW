--Query table of Employee data (employeeid, last_name, 
--first_name, gender, and, salary)
SELECT e.employeeid, e.first_name, e.last_name, e.gender, salary.salary
FROM employee e
LEFT JOIN  salary ON e.employeeid = salary.employeeid
ORDER BY employeeid;

--Query employees hired in 1986
SELECT *
FROM employee
WHERE hire_date LIKE '1986%'; 

--Query department manager information (deptid, deptname, employeeid
--last_name, first_name, start_date, end_date)
SELECT m.deptid, dept.deptname, m.employeeid, e.first_name, e.last_name, m.from_date, m.to_date
FROM dept_mang m
LEFT JOIN dept ON m.deptid = dept.deptid
LEFT JOIN employee e ON m.employeeid = e.employeeid
ORDER BY employeeid;

--Query Department Employee data (employeeid, first_name, last_name
--deptname)
SELECT de.employeeid, e.first_name, e.last_name, dept.deptname
FROM dept_emp de
LEFT JOIN employee e ON de.employeeid = e.employeeid
LEFT JOIN dept ON de.deptid = dept.deptid
ORDER BY employeeid;

--Query employees whose first name is 'Hercules' and last name begins with 'B'
SELECT e.first_name, e.last_name
FROM employee e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

--Query employee data from Sales department (employeeid, first_name,
--last_name, deptname)
SELECT de.employeeid, e.first_name, e.last_name, dept.deptname
FROM dept_emp de
LEFT JOIN employee e ON de.employeeid = e.employeeid
LEFT JOIN dept ON de.deptid = dept.deptid
WHERE deptname = 'Sales'
ORDER BY employeeid;

----Query employee data from Development department (employeeid, first_name,
--last_name, deptname)
SELECT de.employeeid, e.first_name, e.last_name, dept.deptname
FROM dept_emp de
LEFT JOIN employee e ON de.employeeid = e.employeeid
LEFT JOIN dept ON de.deptid = dept.deptid
WHERE deptname IN ('Sales', 'Development')
ORDER BY employeeid;

--Query frequency count of last names in descending order
SELECT last_name, COUNT(*) 
FROM employee 
GROUP BY last_name
ORDER BY COUNT DESC;
