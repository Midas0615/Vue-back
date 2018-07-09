var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO po (OrderIdx,No,Po,Style,U_Price,Qty,Amount,Factory,D_Date,Remark) values (?,?,?,?,?,?,?,?,?,?)
  `, [body.ord_idx, body.no, body.po, body.style, body.u_price, body.qty, body.amount, body.factory, body.d_date, body.remark],
  function(err)
  {
    console.log(err);
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
  db.query('SELECT * FROM po WHERE Po = ? AND OrderIdx = ?',
    [body.po, body.ord_idx], function(err, rows) {      
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
  db.query('SELECT * FROM po WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM po WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

var edit = function(body, callback) {
  db.query('UPDATE po SET ? WHERE Idx = ?',
    [{
      No:body.no, Po:body.po, Style: body.style, Qty: body.qty, U_Price: body.u_price, Amount: body.amount, Factory: body.factory, D_Date: body.d_date, Remark: body.remark
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

exports.add = add;
exports.load = load;
exports.remove = remove;
exports.edit = edit;