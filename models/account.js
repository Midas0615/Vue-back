var db = require('./db');

var find_all = function(callback) {
  db.query('SELECT * FROM accounts', [], function(err, rows) {
    callback(err, rows);
  });
}

exports.find_all = find_all;