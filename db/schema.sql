DROP DATABASE IF EXISTS employees;

CREATE DATABASE employees;

USE  employees;

CREATE TABLE departments (
id INT PRIMARY KEY,
name VARCHAR (50) UNIQUE NOT NULL
);

CREATE TABLE roles (
    id INT PRIMARY KEY,
    job_title VARCHAR(50) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    CONSTRAINT forkey_dept FOREIGN KEY (department_id) REFERENCES departments(id)
);


CREATE TABLE employee (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    CONSTRAINT forkey_role FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE,
    manager_id INT UNSIGNED,
    INDEX man_ind (manager_id),
    CONSTRAINT forkey_manager FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);
