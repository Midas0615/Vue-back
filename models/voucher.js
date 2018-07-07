var db = require('./db');

var create = function(id, email, data, callback) {
  db.query(`
    INSERT INTO voucher (VIdx, Email, Txt) values (?,?,?)
  `, [id, email, data],
  function(err)
  {
    if(err){
      if (err.code === 'ER_DUP_ENTRY') {
        // If we somehow generated a duplicate user id, try again
        return create(id, email, data, callback);
      }
      return callback(err);
    }
    return callback(null, true);
  })
}

var add = function(id, email, data, callback) {  
  db.query('SELECT * FROM voucher WHERE VIdx = ? AND email = ?',
    [id, email], function(err, rows) {
      if(err) {
        return callback(err);
      }
      if (rows.length) {
        return callback(null, false);
      } else {
        // No user exists, create the user
        return create(id, email, data, callback);
      }
    }
  )
}
var find_all = function(callback) {
  db.query(`
    SELECT voucher.*, users.CostcenterIdx, costcenter.CostcenterName, users.GroupIdx
    FROM voucher
    INNER JOIN users ON users.Email=voucher.Email
    INNER JOIN costcenter ON users.CostcenterIdx = costcenter.CostcenterIdx
    `, [], function(err, rows) {
    callback(err, rows);
  });
}
var find_one = function(Idx, callback) {
  db.query('SELECT * FROM voucher WHERE Idx = ?', [Idx], function(err, rows) {
    if(err) {
      return callback(err);
    }
    if (rows.length) {
      return callback(null, rows[0]);
    }
  })
}
var update = function(id, email, data, oldIdx, callback) {
  db.query('UPDATE voucher SET ? WHERE Idx = ?', [{VIdx: id, Email: email, Txt: data}, oldIdx],
    function(err) {
      console.log(err);
      if(err)
        return callback(err);
      return callback(null);
    }
  )
}

exports.add = add;
exports.find_all = find_all;
exports.fine_one = find_one;
exports.update = update;