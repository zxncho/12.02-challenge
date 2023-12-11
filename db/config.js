const mysql = require("mysql2");

const connection = mysql.createConnection({
  host:"",
  user: "zxncho",
  password: "GodBodii2017!$@",
  database: "employees"
});

connection.connect(function (err) {
  if (err) throw err;
});

module.exports = connection;
