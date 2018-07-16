var db = require('./db');

var find_all = function(callback) {
  db.query(`
    SELECT iorderactual.*, users.UserName as HandlerName FROM iorderactual INNER JOIN users ON iorderactual.Handler = users.UserIdx
  `, [], function(err, rows) {
    callback(err, rows);
  });
}

var find = function(body, callback) {
  var q = ' WHERE';
  var arr = [];
  if(body.dept != null) {
    q += ' iorderactual.DeptIdx = ? AND';
    arr.push(body.dept.DeptIdx);
  }
  if(body.buyer != null) {
    q += ' iorderactual.Buyer = ? AND';
    arr.push(body.buyer.CustIdx);
  }
  if(body.file) {
    q += ' iorderactual.Fileno = ? AND';
    arr.push(body.file);
  }
  if(body.style) {
    q += ' iorderactual.Styleno = ? AND';
    arr.push(body.style);
  }
  if(arr.length > 0) {
    q = `SELECT iorderactual.*, users.UserName as HandlerName FROM iorderactual INNER JOIN users ON iorderactual.Handler = users.UserIdx` + q;
    q = q.substring(0, q.lastIndexOf(" "));
  } else {
    q = `SELECT iorderactual.*, users.UserName as HandlerName FROM iorderactual INNER JOIN users ON iorderactual.Handler = users.UserIdx`;
  }
  var q2 = q;
  q += ` LIMIT ${(body.currentPage-1)*50},50`;
  new Promise((resolve, reject) => {
    console.log(q2);
    db.query(q2, arr, function(err, rows) {
      if(err) reject(err);
      else resolve(rows.length);
    });
  }).then(total => {
    db.query(q, arr, function(err, rows) {
      callback(err, rows, total);
    });
  }).catch(err => {
    callback(err);
  })
}

var findOne = function(ordIdx, callback) {
  db.query(`SELECT * FROM iorderactual WHERE Idx = ?`, [ordIdx], function(err, rows) {
    callback(err, rows);
  })
}
exports.find = find;
exports.find_all = find_all;
exports.findOne = findOne;