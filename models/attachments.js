var db = require('./db');

var create = function(fields, filename, callback) {
  db.query(`
    INSERT INTO attachment (OrderIdx,Title,Description,FileName) values (?,?,?,?)
  `, [fields.ord_idx, fields.title, fields.description, filename],
  function(err)
  {
    if(err){
      if (err.code === 'ER_DUP_ENTRY') {
        // If we somehow generated a duplicate user id, try again
        return create(fields, filename, callback);
      }
      return callback(err);
    }
    return callback(null, true);
  })
}

var add = function(fields, filename, callback) {  
  console.log(fields, filename);  
  db.query(`
    SELECT * FROM attachment WHERE OrderIdx = ? AND Title = ? AND Description = ? AND FileName = ?
  `,
    [fields.ord_idx, fields.title, fields.description, filename], function(err, rows) {
      if(err) {
        console.log(err);
        return callback(err);
      }
      if (rows.length) {
        return callback(null, false);
      } else {
        // No user exists, create the user
        return create(fields, filename, callback);
      }
    }
  )
}

var load = function(ordidx, callback) {
  db.query('SELECT * FROM attachment WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {      
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM attachment WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.remove = remove;