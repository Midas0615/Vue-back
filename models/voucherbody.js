var db = require('./db');
var create = function(headerid, body, callback) {
  db.query(`
    INSERT INTO voucherbody (HeaderIdx,File,Buyer,Reg,Fact,Descripcion_Title,Descripcion_Body,Cantidad,Unitario)
    values (?,?,?,?,?,?,?,?,?)
  `, [headerid, body.file?body.file.Idx:null, body.buyer?body.buyer.CustIdx:null, body.reg,
      body.fact, body.descripcion_title, body.descripcion_body, body.cantidad, body.unitario
    ],
  function(err, result)
  {
    if(err){
      if (err.code === 'ER_DUP_ENTRY') {
        // If we somehow generated a duplicate user id, try again
        return create(headerid, body, callback);
      }
      return callback(err);
    }
    return callback(null);
  })
}

var add = function(headerid, body, callback) {
  if(body.oldid == null) {
    return create(headerid, body, callback);
  } else {
    db.query(`SELECT * FROM voucherbody WHERE HeaderIdx = ? AND Idx = ?`,
      [headerid, body.oldid],
      function(err, rows) {
        if(err) {
          return callback(err);
        }
        if (rows.length) {
          return edit(headerid, body, callback);
        } else {
          // No user exists, create the user
          return create(headerid, body, callback);
        }
      }
    )
  }  
}

var edit = function(headerid, body, callback) {
  console.log(body);
  db.query(`UPDATE voucherbody SET ? WHERE HeaderIdx = ? AND Idx = ?`, [{    
    File: body.file?body.file.Idx:null, Buyer: body.buyer?body.buyer.CustIdx:null, Reg: body.reg, Fact: body.fact, Descripcion_Title: body.descripcion_title,
    Descripcion_Body: body.descripcion_body, Cantidad: body.cantidad, Unitario: body.unitario
  }, headerid, body.oldid],
  function(err, result)
  {
    console.log(err);
    return callback(err);
  })
}

var update = function(body, headerid, callback) {
  return add(headerid, body, callback);
}

var get = function(Idx, callback) {
  db.query(`SELECT * FROM voucherbody WHERE HeaderIdx = ?`, [Idx], function(err, rows) {
      return callback(err, rows);
  })
}

var remove = function(Idx, callback) {
  db.query('DELETE FROM voucherbody WHERE Idx = ?', [Idx], function(err) {
    console.log(err);
    return callback(err);
  })
}

exports.add = add;
exports.get = get;
exports.update = update;
exports.remove = remove;