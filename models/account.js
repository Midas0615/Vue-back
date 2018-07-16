var db = require('./db');

var find_all = function(callback) {
  db.query('SELECT * FROM accounts', [], function(err, rows) {
    callback(err, rows);
  });
}

var setGroup = function(body, callback) {
  console.log(body);
  db.query('UPDATE accounts SET ? WHERE Idx = ?', [
    {PGroup: body.parent}, body.Idx
  ], function(err) {
    return callback(err);
  })
}

var removeGroup = function(Idx, callback) {
  db.query('UPDATE accounts SET ? WHERE Idx = ?', [
    {PGroup: null}, Idx
  ], function(err) {
    return callback(err);
  })
}

exports.find_all = find_all;
exports.setGroup = setGroup;
exports.removeGroup = removeGroup;