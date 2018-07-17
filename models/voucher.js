var db = require('./db');

var find = function(body, callback) {
  var q = ' WHERE';
  var arr = [];
  if(body.account != null) {
    q += ' voucherheader.Cuenta = ? AND';
    arr.push(body.account.Idx);
  }
  if(body.department != null) {
    q += ' voucherheader.DeptIdx = ? AND';
    arr.push(body.department.DeptIdx);
  }
  if(body.voucher) {
    q += ' voucherheader.Voucher = ? AND'
    arr.push(body.voucher);
  }
  if(body.customer) {
    q += ' voucherheader.Proveedor = ? AND'
    arr.push(body.customer.CustIdx);
  }
  if(body.currency) {
    q += ' voucherheader.Currency = ? AND'
    arr.push(body.currency.Idx);
  }
  if(body.p_type) {
    q += ' voucherheader.Forma = ? AND';
    arr.push(body.p_type.Idx);
  }
  
  if(arr.length > 0) {
    q = `SELECT voucherheader.*, sum(voucherbody.Cantidad*voucherbody.Unitario) as sum1, CONCAT(iorderactual.Fileno, ",") as file, costcenter.CostcenterIdx as CostCenter FROM voucherheader
         LEFT JOIN voucherbody ON voucherbody.HeaderIdx = voucherheader.Idx
         INNER JOIN dept ON voucherheader.DeptIdx = dept.DeptIdx
         INNER JOIN costcenter ON costcenter.CostcenterIdx = dept.CostCenterIdx
         LEFT JOIN iorderactual ON iorderactual.Idx = voucherbody.File` + q;
    q = q.substring(0, q.lastIndexOf(" "));
  } else {
    q = `SELECT voucherheader.*, sum(voucherbody.Cantidad*voucherbody.Unitario) as sum1, CONCAT(iorderactual.Fileno, ",") as file, costcenter.CostcenterIdx as CostCenter FROM voucherheader
         LEFT JOIN voucherbody ON voucherbody.HeaderIdx = voucherheader.Idx
         INNER JOIN dept ON voucherheader.DeptIdx = dept.DeptIdx
         INNER JOIN costcenter ON costcenter.CostcenterIdx = dept.CostCenterIdx
         LEFT JOIN iorderactual ON iorderactual.Idx = voucherbody.File`;
  }
  q += ` GROUP BY voucherheader.Idx`;  
  db.query(q, arr, function(err, rows) {
    callback(err, rows);
  });
}

var find_all = function(callback) {
  db.query(`
  SELECT voucherheader.*, sum(voucherbody.Cantidad*voucherbody.Unitario) as sum1 FROM voucherheader
  INNER JOIN voucherbody ON voucherbody.HeaderIdx = voucherheader.Idx GROUP BY voucherheader.Idx
  `, [], function(err, rows){
    callback(err,rows);
  })
}

var report_dept = function(callback) {
  var q = `
    SELECT voucherheader.DeptIdx as dept, dept.DeptName as deptName, voucherheader.Fetcha as fetcha, sum(voucherbody.Cantidad*voucherbody.Unitario) as sum1 FROM voucherheader
    LEFT JOIN voucherbody ON voucherbody.HeaderIdx = voucherheader.Idx
    INNER JOIN dept ON voucherheader.DeptIdx = dept.DeptIdx    
    GROUP BY voucherheader.Idx
  `;
  db.query(q, [], function(err, rows) {
    callback(err, rows);
  })
}

//For Dashboard
var getProfitSum = function(orderidx, name, callback) {
  var q = `
    SELECT sum(voucherbody.Cantidad * voucherbody.Unitario) as Profit FROM voucherbody
    INNER JOIN voucherheader ON voucherbody.HeaderIdx = voucherheader.Idx
    INNER JOIN accounts ON voucherheader.Cuenta = accounts.Idx
    INNER JOIN codes ON codes.Classification = ? AND codes.Contents = accounts.AccountIdx
    WHERE voucherbody.File = ?
  `;
  db.query(q, [name, orderidx], function(err, rows) {
    callback(err, rows);
  })
}

exports.find = find;
exports.find_all = find_all;
exports.report_dept = report_dept;
//Dashbord
exports.getProfitSum = getProfitSum;