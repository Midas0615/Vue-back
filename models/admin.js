var db = require('./db');

var findAllUser = function(callback) {
  db.query(`
    SELECT users.*, costcenter.CostcenterName as CostCenter, dept.DeptName as Department
    From users
    LEFT JOIN costcenter on costcenter.CostcenterIdx = users.CostcenterIdx
    LEFT JOIN dept on dept.DeptIdx = users.DeptIdx
  `, [], function(err, rows) {
    callback(err, rows);
  })
}

exports.findAllUser = findAllUser;