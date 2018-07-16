var db = require('./db');

var create = function(body, callback) {
  db.query('INSERT INTO vouchergroup (Name, PIdx) values (?,?)',
    [body.name, body.parent], function(err) {
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
  db.query('SELECT * FROM vouchergroup WHERE name = ? AND PIdx = ?', [body.name, body.parent], function(err, rows) {
    if(err) {
      return callback(err);
    } else {
      if(rows.length == 0) {
        create(body, callback);
      } else if(rows.length > 0) {
        callback(err, false);
      }
    }
  })  
}

var load_group = function(Pidx, callback) {
  db.query('SELECT * FROM vouchergroup WHERE PIdx = ?', [Pidx], function(err, rows) {
    return callback(err, rows);
  })
}

var remove = function(Idx, callback) {
  db.query('DELETE FROM vouchergroup WHERE Idx = ?', [Idx], function(err) {
    callback(err);
  })
}

var find_all = function(callback) {
  db.query('SELECT * FROM vouchergroup', [], function(err, rows) {
    return callback(err, rows);
  })
}

exports.add = add;
exports.load_group = load_group;
exports.remove = remove;
exports.find_all = find_all;