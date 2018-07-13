var db = require('./db');

var create = function(headerid, body, callback) {
  db.query(`
    INSERT INTO voucherroute (HeaderIdx,Encargador,Gerente,Director,Director_General,D_Director,D_Director_General,D_Presidente)
    values (?,?,?,?,?,?,?,?)
  `, [headerid, body.encargador?body.encargador.UserIdx:null, body.gerente?body.gerente.UserIdx:null, body.director?body.director.UserIdx:null,
      body.director_general?body.director_general.UserIdx:null, body.d_director?body.d_director.UserIdx:null,
      body.d_director_general?body.d_director_general.UserIdx: null, body.d_presidente?body.d_presidente.UserIdx:null
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
  db.query(`SELECT * FROM voucherroute WHERE HeaderIdx = ?
  `,
    [headerid],
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

var edit = function(headerid, body, callback) {
  db.query(`UPDATE voucherroute SET ? WHERE HeadrIdx = ?`, [{    
    Encargador:body.encargador?body.encargador.UserIdx:null, Gerente: body.gerente?body.gerente.UserIdx:null,
    Director: body.director?body.director.UserIdx:null, Director_General: body.director_general?body.director_general.UserIdx:null,
    D_Director: body.d_director?body.d_director.UserIdx:null, D_Director_General: body.d_director_general?body.d_director_general.UserIdx: null,
    D_Presidente: body.d_presidente?body.d_presidente.UserIdx:null
  }],
  function(err, result)
  {    
    return callback(err);
  })
}

var update = function(body, callback) {
  db.query('UPDATE voucherroute SET ? WHERE Idx = ?', [
    {
      Encargador:body.encargador?body.encargador.UserIdx:null, Gerente: body.gerente?body.gerente.UserIdx:null,
      Director: body.director?body.director.UserIdx:null, Director_General: body.director_general?body.director_general.UserIdx:null,
      D_Director: body.d_director?body.d_director.UserIdx:null, D_Director_General: body.d_director_general?body.d_director_general.UserIdx: null,
      D_Presidente: body.d_presidente?body.d_presidente.UserIdx:null
    }, body.oldid
  ], function(err) {
    return callback(err);
  })
}

var get = function(Idx, callback) {
  db.query(`SELECT * FROM voucherroute WHERE HeaderIdx = ?`, [Idx], function(err, rows) {
      return callback(err, rows);
  })
}

exports.add = add;
exports.get = get;
exports.update = update;