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
  
  if(arr.length > 0) {
    q = `SELECT voucherheader.*, sum(voucherbody.Cantidad*voucherbody.Unitario) as sum, CONCAT(iorderactual.Fileno, ",") as file FROM voucherheader
         INNER JOIN voucherbody ON voucherbody.HeaderIdx = voucherheader.Idx
         INNER JOIN iorderactual ON iorderactual.Idx = voucherbody.File` + q;
    q = q.substring(0, q.lastIndexOf(" "));
  } else {
    q = `SELECT voucherheader.*, sum(voucherbody.Cantidad*voucherbody.Unitario) as sum, CONCAT(iorderactual.Fileno, ",") as file FROM voucherheader
         INNER JOIN voucherbody ON voucherbody.HeaderIdx = voucherheader.Idx
         INNER JOIN iorderactual ON iorderactual.Idx = voucherbody.File`;
  }
  q += ` GROUP BY voucherheader.Idx`;  
  db.query(q, arr, function(err, rows) {
    callback(err, rows);
  });
}

var find_all = function(callback) {
  db.query(`
  SELECT voucherheader.*, sum(voucherbody.Cantidad*voucherbody.Unitario) as sum FROM voucherheader
  INNER JOIN voucherbody ON voucherbody.HeaderIdx = voucherheader.Idx GROUP BY voucherheader.Idx
  `, [], function(err, rows){
    callback(err,rows);
  })
}

exports.find = find;
exports.find_all = find_all;