var mysql = require('mysql');
var exports = module.exports = {};

var con = mysql.createConnection({
  host: "localhost",
  port: "3306",
  user: "root",
  password: "password",
  database: "CS425"
});

// con.connect(function(err) {
//  if (err) throw err;
//  var sql = "DELETE FROM customers WHERE address = 'Mountain 21'";
//  con.query(sql, function (err, result) {
//    if (err) throw err;
//    console.log("Number of records deleted: " + result.affectedRows);
//  });
// });



// con.query('SELECT 1 + 1 AS solution', function (error, results, fields) {
//   if (error) throw error;
//   console.log('The solution is: ', results[0].solution);
// });
function queries(query) {
con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM CUSTOMER", function (err, result, fields) {
    if (err) throw err;
    return result;
  });
});
}

exports.email = function(email, password) {
  const query = "";
  return queries(query)

}