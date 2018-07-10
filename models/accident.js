var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO accident (OrderIdx,Report,Description,P_Accident,Amount) values (?,?,?,?,?)
  `, [body.ord_idx, body.report, body.description, body.p_accident, body.amount],
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
  db.query('SELECT * FROM accident WHERE OrderIdx = ? AND Report = ? AND Description = ? AND P_Accident = ? AND Amount = ?',
    [body.ord_idx, body.report, body.description, body.p_accident, body.amount], function(err, rows) {
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
  db.query('SELECT * FROM accident WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var confirm = function(idx, confirm, callback) {
  db.query('UPDATE accident SET ? WHERE Idx = ?', [{
    Confirm: confirm
  }, idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  console.log(body);
  db.query('UPDATE accident SET ? WHERE Idx = ?',
    [{
      Report: body.report, Description: body.description, P_Accident: body.p_accident, Amount: body.amount
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  console.log(body);
  db.query('DELETE FROM accident WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.confirm = confirm;
exports.edit = edit;
exports.remove = remove;