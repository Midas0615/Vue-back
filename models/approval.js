var db = require('./db');

var create = function(ordidx, callback) {
  db.query(`
    INSERT INTO approval (OrderIdx,Handler,Manager,Director,Managing_Director,President,Handler2,Manager2,Director2,Managing_Director2,President2) values (?,?,?,?,?,?,?,?,?,?,?)
  `, [ordidx,0,0,0,0,0,0,0,0,0,0],
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
  db.query('SELECT * FROM approval WHERE OrderIdx = ?', [ordidx], function(err, list) {
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
  db.query('UPDATE approval SET ? WHERE Idx = ? AND OrderIdx = ?', [{
    Handler: body.data.handler, Manager: body.data.manager, Director: body.data.director,
    Managing_Director: body.data.managing_director, President: body.president,
    Handler2: body.data.handler, Manager2: body.data.manager, Director2: body.data.director,
    Managing_Director2: body.data.managing_director, President2: body.president
  }, body.data.idx, body.ordidx], function(err) {
    console.log(err);
    callback(err);
  })
}
exports.confirm = confirm;
exports.load = load;