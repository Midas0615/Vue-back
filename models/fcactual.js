var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO fcactual (OrderIdx,F_Type,Fabric,U_Price,Consumption,Yds_Pcs,Width,Weight) values (?,?,?,?,?,?,?,?)
  `, [body.ord_idx, body.f_type, body.fabric, body.u_price, body.consumption, body.yds_pcs, body.width, body.weight],
  function(err)
  {
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
  db.query('SELECT * FROM fcactual WHERE OrderIdx = ? AND F_Type = ? AND Fabric = ? AND U_Price = ? AND Consumption = ? AND Yds_Pcs = ? AND Width = ? AND Weight = ?',
    [body.ord_idx, body.f_type, body.fabric, body.u_price, body.consumption, body.yds_pcs, body.width, body.weight], function(err, rows) {
      if(err) {
        return callback(err);
      }
      if (rows.length) {
        return callback(null, false);
      } else {
        // No user exists, create the user
        return create(body, callback);
      }
    }
  )
}

var load = function(ordidx, callback) {
  db.query('SELECT * FROM fcactual WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var confirm = function(idx, confirm, callback) {
  db.query('UPDATE fcactual SET ? WHERE Idx = ?', [{
    Confirm: confirm
  }, idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  db.query('UPDATE fcactual SET ? WHERE Idx = ?',
    [{
      F_Type: body.f_type, Fabric: body.fabric, U_Price: body.u_price, Consumption: body.consumption,
      Yds_Pcs: body.yds_pcs, Width: body.width, Weight: body.weight
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM fcactual WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.confirm = confirm;
exports.edit = edit;
exports.remove = remove;