var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO yarnplan (OrderIdx,Yarn,U_Price,KGS,Amount,Remark) values (?,?,?,?,?,?)
  `, [body.ord_idx, body.yarn, body.u_price, body.kgs, body.amount, body.remark],
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
  console.log(body);
  db.query('SELECT * FROM yarnplan WHERE OrderIdx = ? AND Yarn = ? AND U_Price = ? AND KGS = ? AND Amount = ? AND Remark = ?',
    [body.ord_idx, body.yarn, body.u_price, body.kgs, body.amount, body.remark], function(err, rows) {
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

var load = function(orderidx, callback) {
  db.query('SELECT * FROM yarnplan WHERE OrderIdx = ?', [orderidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var confirm = function(idx, confirm, callback) {
  db.query('UPDATE yarnplan SET ? WHERE Idx = ?', [{
    Confirm: confirm
  }, idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  db.query('UPDATE yarnplan SET ? WHERE Idx = ?',
    [{
      Yarn: body.yarn, U_Price: body.u_price, KGS: body.kgs,
      amount: body.amount, remark: body.remark
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM yarnplan WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.confirm = confirm;
exports.edit = edit;
exports.remove = remove;