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
  db.query('SELECT voucher.*, users.CostcenterIdx, users.GroupIdx FROM voucher INNER JOIN users ON users.Email=voucher.Email', [], function(err, rows) {
    callback(err, rows);
  });
}

exports.add = add;
exports.find_all = find_all;