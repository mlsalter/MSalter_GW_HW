-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Department" (
    "ID" VARCHAR   NOT NULL,
    "DeptName" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Department" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Employee" (
    "ID" INT   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR(1)   NOT NULL,
    "birthdate" DATE   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Dept_Emp" (
    "EmployeeID" INT   NOT NULL,
    "DeptID" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "Dept_manager" (
    "DeptID" VARCHAR   NOT NULL,
    "EmployeeID" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "Titles" (
    "EmployeeID" INT   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "Salary" (
    "EmployeeID" INT   NOT NULL,
    "salary" INT   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employee" ("ID");

ALTER TABLE "Dept_Emp" ADD CONSTRAINT "fk_Dept_Emp_DeptID" FOREIGN KEY("DeptID")
REFERENCES "Department" ("ID");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_DeptID" FOREIGN KEY("DeptID")
REFERENCES "Department" ("ID");

ALTER TABLE "Dept_manager" ADD CONSTRAINT "fk_Dept_manager_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employee" ("ID");

ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employee" ("ID");

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_EmployeeID" FOREIGN KEY("EmployeeID")
REFERENCES "Employee" ("ID");

