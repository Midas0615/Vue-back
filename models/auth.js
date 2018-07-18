var db = require('./db');

var create = function(body, callback) {
  db.query('INSERT INTO auth (UserIdx, Page, Edit) values (?,?,?)',
    [body.UserIdx, body.page.Value, body.edit.Value],
    function(err) {
      if(err){
        if (err.code === 'ER_DUP_ENTRY') {
          // If we somehow generated a duplicate user id, try again
          return create(body, callback);
        }
        return callback(err);
      }
      return callback(null, true);
    }
  )
}

var add = function(body, callback) {
  db.query('SELECT * FROM auth WHERE UserIdx = ? AND Page = ?', [body.UserIdx, body.page.Value], function(err, rows){ 
    if(err) {
      callback(err);
    } else if(rows.length >= 1) {      
      callback(null, false);
    } else {
      return create(body, callback);
    }
  })  
}

var update = function(body, callback) {
  console.log(body);
  db.query('UPDATE auth SET ? WHERE Idx = ?',
    [{UserIdx: body.UserIdx, Page: body.page.Value, Edit: body.edit.Value}, body.OldIdx],
    function(err) {
      return callback(err);
    }
  )
}

var load = function(body, callback) {
  db.query('SELECT * FROM auth WHERE UserIdx = ?', [body.UserIdx], function(err, rows) {
    callback(err, rows);
  })
}

var remove = function(body, callback) {
  console.log(body);
  db.query('DELETE FROM auth WHERE Idx = ?', [body.OldIdx], function(err) {
    return callback(err);
  })
}

exports.add = add;
exports.update = update;
exports.load = load;
exports.remove = remove;