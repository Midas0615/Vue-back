var db = require('./db');

var formatdate = function(d) {
  var month_names = ["Jan", "Feb", "Mar", 
    "Apr", "May", "Jun", "Jul", "Aug", "Sep", 
    "Oct", "Nov", "Dec"];
    
  var today = new Date(d);
  var day = today.getDate();
  var month_index = today.getMonth();
  var year = today.getFullYear();
  return day + "-" + month_names[month_index] + "-" + year
}

var create = function(body, callback) {
  db.query(`
    INSERT INTO voucherheader (DeptIdx,Voucher,Fetcha,Cuenta,Proveedor,Forma,C_Limit,Compora,Cheque,Banco_Nombre,Buyer,Banco_Cuenta,Currency,Paper_No) 
    values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)
  `, [body.departmento?body.departmento.DeptIdx:null, body.voucher,formatdate(body.fetcha), body.cuenta?body.cuenta.Idx:null,
      body.proveedor?body.proveedor.CustIdx:null, body.forma?body.forma.Idx:null, body.credit_limit, body.compora,
      body.cheque, body.banco_nombre?body.banco_nombre.CustIdx:null, body.buyer?body.buyer.CustIdx:null, body.banco_cuenta,
      body.currency?body.currency.Idx: null, body.paper_no],
  function(err, result)
  {
    if(err){
      if (err.code === 'ER_DUP_ENTRY') {
        // If we somehow generated a duplicate user id, try again
        return create(body, callback);
      }
      return callback(err);
    }
    return callback(null, result.insertId);
  })
}

var add = function(body, callback) {
  db.query(`SELECT * FROM voucherheader WHERE Voucher = ?`,
    [body.voucher], function(err, rows) {
      if(err) {        
        return callback(err);
      }
      if (rows.length) {
        return callback(null, false);
      } else {
        // No user exists, create the user
        return create(body, callback);
      }
    }
  )
}

var get = function(Idx, callback) {
  db.query(`SELECT * FROM voucherheader WHERE Idx = ?`, [Idx], function(err, rows) {
      return callback(err, rows);
  })
}

var fine_one_Vidx = function(Idx, callback) {
  db.query('SELECT * FROM voucherheader WHERE Voucher = ?', [Idx], function(err, rows) {
    if(err) {
      return callback(err);
    }
    if (rows.length > 0) {
      return callback(null, false);
    } else {
      return callback(null, true);
    }
  })
}

var update = function(body, callback) {
  db.query('UPDATE voucherheader SET ? WHERE Idx = ?', [
    {
      DeptIdx: body.departmento?body.departmento.DeptIdx:null, Fetcha: body.fetcha?formatdate(body.fetcha):null,
      Voucher: body.voucher, Cuenta: body.cuenta?body.cuenta.Idx: null, Proveedor: body.proveedor?body.proveedor.CustIdx: null,
      Forma: body.forma?body.forma.Idx: null, C_Limit: body.credit_limit, Compora: body.compora, Cheque: body.cheque,
      Banco_Nombre: body.banco_nombre?body.banco_nombre.CustIdx: null, Buyer: body.buyer?body.buyer.CustIdx: null,
      Banco_Cuenta: body.banco_cuenta, Currency: body.currency?body.currency.Idx:null, Paper_No: body.paper_no
    }, body.oldid
  ], function(err) {
    return callback(err);
  })
}

exports.add = add;
exports.get = get;
exports.update = update;
exports.fine_one_Vidx = fine_one_Vidx;
