USE employees;

-- Insert into departments
INSERT INTO departments (id, name) VALUES
    (1, 'Sales'),
    (2, 'Engineering'),
    (3, 'Finance'),
    (4, 'Legal'),
    (5, 'Implementation'),
    (6, 'IT');

-- Insert into roles
INSERT INTO roles (id, job_title, salary, department_id) VALUES
    (1, 'Sales Lead', 100000, 1),
    (2, 'Salesperson', 60000, 1),
    (3, 'Software Engineer', 120000, 2),
    (4, 'Account Manager', 160000, 3),
    (5, 'Accountant', 125000, 3),
    (6, 'Legal Team Lead', 250000, 4),
    (7, 'Lawyer', 190000, 4),
    (8, 'Project Manager', 120000, 4),
    (9, 'IT Manager', 150000, 4);

-- Insert into employee
INSERT INTO employee (id,first_name, last_name, role_id, manager_id) VALUES
    (1, 'John', 'Wayne', 1, NULL),
    (2, 'Mike', 'Wallace', 2, 1),
    (3, 'Ashley', 'Doherty', 3, NULL),
    (4, 'Kevin', 'Ransom', 4, 3),
    (5, 'Malia', 'Johnson', 6, 5),
    (6, 'Sarah', 'Frank', 7, NULL),
    (7, 'Tom', "O'Hara", 8, 7);
