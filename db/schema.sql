DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;

USE  employeeTracker_db;

CREATE TABLE departments (
id INT PRIMARY KEY,
name VARCHAR (50) UNIQUE NOT NULL
);

CREATE TABLE roles (
id INT PRIMARY KEY,
job_title VARCHAR (50) NOT NULL,
salary DECIMAL UNSIGNED NOT NULL,
department_id UNSIGNED NOT NULL,
INDEX dept_index (department_id),
CONSTRAINT forkey_dept FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE employees (
id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
role_id INT UNSIGNED NOT NULL,
manager_id INT UNSIGNED NOT NULL,
INDEX mgr_id (manager_id),
CONSTRAINT forkey_mgr FOREIGN KEY (manager_id) REFERENCES roles(id) CHECK (manager_id <= 50),
index role_index (role_id),
CONSTRAINT forkey_role FOREIGN KEY (role_id) REFERENCES roles(id),
);