var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO admini (OrderIdx,D_Date,Description,Amount) values (?,?,?,?)
  `, [body.ord_idx, body.d_date, body.description, body.amount],
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
  db.query('SELECT * FROM admini WHERE OrderIdx = ? AND D_Date = ? AND Description = ? AND Amount = ?',
    [body.ord_idx, body.d_date, body.description, body.amount], function(err, rows) {
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
  db.query('SELECT * FROM admini WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var confirm = function(idx, confirm, callback) {
  db.query('UPDATE admini SET ? WHERE Idx = ?', [{
    Confirm: confirm
  }, idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  db.query('UPDATE admini SET ? WHERE Idx = ?',
    [{
      D_Date: body.d_date, Description: body.description, Amount: body.amount
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM admini WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

var getProfitSum= function(Idx, callback) {
  db.query('SELECT sum(Amount) as Profit FROM admini WHERE OrderIdx = ?', [Idx], function(err,rows) {
    callback(err, rows);
  })
}

exports.add = add;
exports.load = load;
exports.confirm = confirm;
exports.edit = edit;
exports.remove = remove;
exports.getProfitSum = getProfitSum;