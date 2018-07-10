var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO ordpay (OrderIdx,Operation,F_Type,Customer1,Kg_Pcs1,U_Price1,Amount1,Date,Kg_Pcs2,U_Price2,Amount2,Customer2) values (?,?,?,?,?,?,?,?,?,?,?,?)
  `, [body.ord_idx, body.operation, body.f_type, body.customer1, body.kg_pcs1, body.u_price1, body.amount1, body.date, body.kg_pcs2, body.u_price2, body.amount2, body.customer2],
  function(err)
  {
    if(err){
      if (err.code === 'ER_DUP_ENTRY') {
        // If we somehow generated a duplicate user id, try again
        return create(body, callback);
      }
      return callback(err);
    }
    return callback(null, true);
  })
}

var add = function(body, callback) {  
  db.query(`SELECT * FROM ordpay WHERE OrderIdx = ? AND Operation = ? AND F_Type = ? AND Customer1 = ? AND Kg_Pcs1 = ? AND U_Price1 = ?
            AND Amount1 = ? AND Date = ? AND Kg_Pcs2 = ? AND U_Price2 = ? AND Amount2 = ? AND Customer2 = ?
  `,
    [body.ord_idx, body.operation, body.f_type, body.customer1, body.kg_pcs1, body.u_price1,
    body.amount1, body.date, body.kg_pcs2, body.u_price2, body.amount2, body.customer2],
    function(err, rows) {
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

var load = function(ordidx, callback) {
  db.query('SELECT * FROM ordpay WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var confirm = function(idx, confirm, callback) {
  db.query('UPDATE ordpay SET ? WHERE Idx = ?', [{
    Confirm: confirm
  }, idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  console.log(body);
  db.query('UPDATE ordpay SET ? WHERE Idx = ?',
    [{
      Operation: body.operation, F_Type: body.f_type, Customer1: body.customer1, Kg_Pcs1: body.kg_pcs1, U_Price1: body.u_price1,
      Amount1: body.amount1, Date: body.date, Kg_Pcs2: body.kg_pcs2, U_Price2: body.u_price2, Amount2: body.amount2, Customer2: body.customer2
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  console.log(body);
  db.query('DELETE FROM ordpay WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.confirm = confirm;
exports.edit = edit;
exports.remove = remove;