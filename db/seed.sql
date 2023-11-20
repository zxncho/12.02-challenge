use employees;

INSERT INTO department
    (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal');
    ('Implementation');
    ('IT');

INSERT INTO role
    (title, salary, department_id)
VALUES
    ('Sales Lead', 100000, 1),
    ('Salesperson', 60000, 1),
    ('Software Engineer', 120000, 2),
    ('Account Manager', 160000, 3),
    ('Accountant', 125000, 3),
    ('Legal Team Lead', 250000, 4),
    ('Lawyer', 190000, 4);
    ('Project Manager', 120000, 4);
    ('IT Manager', 150000, 4);

INSERT INTO employee
    (first_name, last_name, role_id, manager_id)
VALUES
    ('John', 'Wayne', 1, NULL),
    ('Mike', 'Wallace', 2, 1),
    ('Ashley', 'Doherty', 3, NULL),
    ('Kevin', 'Ransom', 4, 3),
    ('Malia', 'Johnson', 6, 5),
    ('Sarah', 'Frank', 7, NULL),
    ('Tom', "O'Hara", 8, 7);