var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO overshort (OrderIdx,Ship_Date,Ship_Qty,U_Price,Remark) values (?,?,?,?,?)
  `, [body.ord_idx, body.ship_date, body.ship_qty, body.u_price, body.remark],
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
  db.query(`SELECT * FROM overshort WHERE OrderIdx = ? AND Ship_Date = ? AND Ship_Qty = ? AND U_Price = ? AND Remark = ?
  `,
    [body.ord_idx, body.ship_date, body.ship_qty, body.u_price, body.remark],
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
  db.query('SELECT * FROM overshort WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var confirm = function(idx, confirm, callback) {
  db.query('UPDATE overshort SET ? WHERE Idx = ?', [{
    Confirm: confirm
  }, idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  db.query('UPDATE overshort SET ? WHERE Idx = ?',
    [{
      Ship_Date: body.ship_date, Ship_Qty: body.ship_qty, U_Price: body.u_price, Remark: body.remark
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM overshort WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.confirm = confirm;
exports.edit = edit;
exports.remove = remove;