var db = require('./db');

var create = function(idx, callback) {
  db.query(`INSERT INTO summary (OrderIdx) values (?)`, [
    idx
  ],
  function(err)
  {
    if(err){
      if (err.code === 'ER_DUP_ENTRY') {
        // If we somehow generated a duplicate user id, try again
        return create(idx, callback);
      }
      return callback(err);
    }
    return callback(null, true);
  })
}

var add = function(body, callback) {    
  db.query('SELECT * FROM summary WHERE OrderIdx = ?',
    [body.ord_idx], function(err, rows) {
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

var load = function(idx, callback) {
  db.query('SELECT * FROM summary WHERE OrderIdx = ?', [idx], function(err, list) {
    if(err) {
      return callback(err);
    } else {
      if(list.length == 0) {
        create(idx, callback);
      } else {
        return callback(null, list);
      }      
    }
  })
}


var edit = function(body, callback) {
  db.query('UPDATE summary SET ? WHERE Idx = ?',
    [{
      yf_price: body.yf_price, yf_rate: body.yf_rate, yf_amount: body.yf_amount,
      material_price: body.material_price, material_rate: body.material_rate, material_amount: body.material_amount,
      sew_price: body.sew_price, sew_rate: body.sew_rate, sew_amount: body.sew_amount,
      int_price: body.int_price, int_rate: body.int_rate, int_amount: body.int_amount,
      frt_price: body.frt_price, frt_rate: body.frt_rate, frt_amount: body.frt_amount,
      commission_price: body.commission_price, commission_rate: body.commission_rate, commission_amount: body.commission_amount,
      test_price: body.test_price, test_rate: body.test_rate, test_amount: body.test_amount,
      duty_price: body.duty_price, duty_rate: body.duty_rate, duty_amount: body.duty_amount,
      admini_price: body.admini_price, admini_rate: body.admini_rate, admini_amount: body.admini_amount,
      other_price: body.other_price, other_rate: body.other_rate, other_amount: body.other_amount
    }, body.ord_idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM summary WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.edit = edit;
exports.remove = remove;