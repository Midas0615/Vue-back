var db = require('./db');

var create = function(ordidx, callback) {
  db.query(`
    INSERT INTO confirmation (OrderIdx,C1,C2,C3,C4,C5,C6,C7,C8) values (?,?,?,?,?,?,?,?,?)
  `, [ordidx,0,0,0,0,0,0,0,0],
  function(err)
  {
    if(err){
      if (err.code === 'ER_DUP_ENTRY') {
        // If we somehow generated a duplicate user id, try again
        return create(ordidx, callback);
      }
      return callback(err);
    }
    return load(ordidx, callback);
  })
}

var load = function(ordidx, callback) {
  db.query('SELECT * FROM confirmation WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      if(list.length == 0) {
        return create(ordidx, callback);
      } else {
        return callback(null, list);
      }      
    }
  })
}

var confirm = function(body, callback) {
  db.query('UPDATE confirmation SET ? WHERE Idx = ? AND OrderIdx = ?', [{
    c1: body.data.c1, c2: body.data.c2, c3: body.data.c3, c4: body.data.c4,
    c5: body.data.c5, c6: body.data.c6, c7: body.data.c7, c8: body.data.c8
  }, body.data.idx, body.ordidx], function(err) {
    console.log(err);
    callback(err);
  })
}
exports.confirm = confirm;
exports.load = load;