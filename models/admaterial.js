var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO admaterial (OrderIdx,A_Name,Supplier1,Order_Qty,Unit_Price,Amount1,Voucher_Date,Supplier2,Amount2) values (?,?,?,?,?,?,?,?,?)
  `, [body.ord_idx, body.a_name, body.supplier1, body.order_qty, body.unit_price, body.amount1, body.voucher_date, body.supplier2, body.amount2],
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
  db.query(`
    SELECT * FROM admaterial WHERE OrderIdx = ? AND A_Name = ? AND Supplier1 = ? AND Order_Qty = ? AND
      Unit_Price = ? AND Amount1 = ? AND Voucher_Date = ? AND Supplier2 = ? AND Amount2 = ?`,
    [body.ord_idx, body.a_name, body.supplier1, body.order_qty, body.unit_price, body.amount1, body.voucher_date, body.supplier2, body.amount2], function(err, rows) {
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
  db.query('SELECT * FROM admaterial WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var confirm = function(idx, data, callback) {
  console.log(data);
  db.query('UPDATE admaterial SET ? WHERE Idx = ?', [{
    handler1: data.handler1, handler2: data.handler2, manager1: data.manager1, manager2: data.manager2
  }, idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  db.query('UPDATE admaterial SET ? WHERE Idx = ?',
    [{
      A_Name: body.a_name, Supplier1: body.supplier1, Order_Qty: body.order_qty, Unit_Price: body.unit_price,
      Amount1: body.amount1, Voucher_Date: body.voucher_date, Supplier2: body.supplier2, Amount2: body.amount2
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM admaterial WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.confirm = confirm;
exports.edit = edit;
exports.remove = remove;