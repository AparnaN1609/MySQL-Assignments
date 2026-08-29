CREATE DATABASE Employee;
USE Employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT,
    location VARCHAR(100)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    age INT,
    gender CHAR(1),
    designation VARCHAR(100),
    salary DECIMAL(10,2),
    hire_date DATE,
    department_id INT,
    location_id INT
);
ALTER TABLE Employees
ADD email VARCHAR(100);
DESCRIBE Employees;
ALTER TABLE Employees
MODIFY designation VARCHAR(200);
DESCRIBE Employees;
ALTER TABLE Employees
DROP COLUMN age;
DESCRIBE Employees;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
DESCRIBE Employees;
RENAME TABLE Departments TO Departments_Info;
SHOW TABLES;
RENAME TABLE Location TO Locations;
SHOW TABLES;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
SHOW TABLES;
DROP DATABASE Employee;

DROP DATABASE IF EXISTS Employee;
CREATE DATABASE Employee;
USE Employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    designation VARCHAR(200),
    salary DECIMAL(10,2),
    hire_date DATE DEFAULT (CURRENT_DATE),
    department_id INT,
    location_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
ALTER TABLE Employees
ADD email VARCHAR(100);
SHOW TABLES;
DESCRIBE Departments;
DESCRIBE Location;
DESCRIBE Employees;
SHOW CREATE TABLE Employees;

SELECT 
    CONSTRAINT_NAME,
    CONSTRAINT_TYPE
FROM information_schema.TABLE_CONSTRAINTS
WHERE TABLE_SCHEMA = 'employee'
AND TABLE_NAME = 'employees';


