DROP DATABASE IF EXISTS employeeTracker_db;

CREATE DATABASE employeeTracker_db;

USE  employeeTracker_db;

CREATE TABLE departments (
id INT PRIMARY KEY,
department_name VARCHAR (50) UNIQUE NOT NULL
)

CREATE TABLE roles (
id INT PRIMARY KEY,
)

CREATE TABLE employees (
id INT PRIMARY KEY,
)