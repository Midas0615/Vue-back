var db = require('./db');

var find_all = function(callback) {
  db.query(`SELECT * FROM codes`, [], function(err, rows) {
    callback(err, rows);
  });
}

var findByClassification = function(name, callback) {
  db.query(`SELECT * FROM codes WHERE Classification = ?`, [name], function(err, rows) {
    callback(err, rows);
  });
}

exports.find_all = find_all;
exports.findByClassification = findByClassification;