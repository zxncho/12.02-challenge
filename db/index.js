const connection = require("./config");

class database  {
    constructor(connection) {
        this.connection = connection;
    }

AllEmployees() {
    return this.connection.promise().query(
        "SELECT employee.id, employee.first_name, employee.last_name, roles.job_title, departments.name AS department, roles.salary, CONCAT(manager.first_name, ' ', manager.last_name) AS manager FROM employee LEFT JOIN role on employee.role_id = role.id LEFT JOIN department on roles.department_id = departments.id LEFT JOIN employee on manager.id = employee.manager_id;"
    );
}

AllManagers () {
    return this.connection.promise().query(
        "SELECT id, first_name, last_name FROM employee WHERE manager_id = 'NULL'",
        employeeId
    );
}

createEmployee () {
    return this.connection.promise().query("INSERT INTO employee SET ?", employee);

}

deleteEmployee () {
    return this.connection.promise().query(
        "DELETE FROM employee WHERE id = ?",
        employeeId
    );

}

updateRole () {
    return this.connection.promise().query(
        "UPDATE employee SET role_id = ? WHERE id = ?",
        [roleId, employeeId]
    );

}

updateManager () {
    return this.connection.promise().query(
        "UPDATE employee SET manager_id = ? WHERE id = ?",
        [managerId, employeeId]
    );

}

findRoles () {
    return this.connection.promise().query(
    "SELECT roles.id, roles.title, departments.name AS department, roles.salary FROM role LEFT JOIN department on roles.department_id = departments.id;"
    );

}

createRole () {
    return this.connection.promise().query("INSERT INTO roles SET ?", roles);

}

deleteRole () {
    return this.connection.promise().query("DELETE FROM roles WHERE id = ?", roles);

}

findDepartments () {
    return this.connection.promise().query(
        "SELECT departments.id, departments.name FROM departments"
    );

}

viewBudgets () {
    return this.connection.promise().query(
        "SELECT departments.id, departments.name, SUM(roles.salary) AS utilized_budget FROM employee LEFT JOIN role on employee.role_id = role.id LEFT JOIN department on roles.department_id = departments.id GROUP BY departments.id, departments.name;"
    );

}

createDepartment () {
    return this.connection.promise().query("INSERT INTO departments SET ?", department);

}

deleteDepartment () {
    return this.connection.promise().query(
        "DELETE FROM departments WHERE id = ?",
        departmentId
    );

}

employeeByDepartment () {
    return this.connection.promise().query(
        "SELECT employee.id, employee.first_name, employee.last_name, roles.job_title FROM employee LEFT JOIN role on employee.role_id = roles.id LEFT JOIN department on roles.department_id = departments.id WHERE departments.id = ?;",
        departmentId
    );

}

employeeByManager () {
    return this.connection.promise().query(
        "SELECT employee.id, employee.first_name, employee.last_name, departments.name AS department, roles.title FROM employee LEFT JOIN role on role.id = employee.role_id LEFT JOIN department ON departments.id = roles.departments_id WHERE manager_id = ?;",
        managerId
    );
 }

}

module.exports = new database(connection);