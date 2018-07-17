var db = require('./db');

var edit = function(body, callback) {
  
}

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

var findQtyByBuyer = function(callback) {
  db.query(`
    SELECT sum(iorderactual.OrderAmount) as Amount, iorderactual.Buyer as Buyer, customers.CustName as BuyerName
    FROM iorderactual
    INNER JOIN customers ON customers.CustIdx = iorderactual.Buyer
    WHERE Indate > ? And Indate < ? GROUP BY iorderactual.Buyer`, [
    new Date(new Date().getFullYear(), 0, 1), new Date(new Date().getFullYear(), 12, 31)
  ], function(err, rows) {
    callback(err, rows);
  })
}

var findByBuyer = function(buyer, callback) {
  db.query(`SELECT * FROM iorderactual WHERE Indate > ? And Indate < ? AND Buyer = ?`, [
    new Date(new Date().getFullYear(), 0, 1), new Date(new Date().getFullYear(), 12, 31), buyer
  ], function(err, rows) {
    callback(err, rows);
  })
}

exports.edit = edit;
exports.find = find;
exports.find_all = find_all;
exports.findOne = findOne;
exports.findQtyByBuyer = findQtyByBuyer;
exports.findByBuyer = findByBuyer;