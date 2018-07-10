var db = require('./db');

var create = function(body, callback) {
  db.query(`
    INSERT INTO testfg (OrderIdx,Test_Item,Supplier,Request_Date,Description,Cost,Times_Number,Pass_Fail,Remarks) values (?,?,?,?,?,?,?,?,?)
  `, [body.ord_idx, body.test_item, body.supplier, body.request_date, body.description, body.cost, body.times_number, body.pass_fail, body.remarks],
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
  db.query(`
    SELECT * FROM testfg WHERE OrderIdx = ? AND Test_Item = ? AND Supplier = ? AND Request_Date = ? AND
      Description = ? AND Cost = ? AND Times_Number = ? AND Pass_Fail = ? AND Remarks = ?
  `,
    [body.ord_idx, body.test_item, body.supplier, body.request_date, body.description, body.cost, body.times_number, body.pass_fail, body.remarks], function(err, rows) {
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
  db.query('SELECT * FROM testfg WHERE OrderIdx = ?', [ordidx], function(err, list) {
    if(err) {      
      return callback(err);
    } else {
      return callback(null, list);
    }
  })
}

var edit = function(body, callback) {
  console.log(body);
  db.query('UPDATE testfg SET ? WHERE Idx = ?',
    [{
      Test_Item: body.test_item, Supplier: body.supplier, Request_Date: body.request_date, Description: body.description,
      Cost: body.cost, Times_Number: body.times_number, Pass_Fail: body.pass_fail, Remarks: body.remarks
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var remove = function(body, callback) {
  db.query('DELETE FROM testfg WHERE Idx = ?', [body.Idx], function(err) {
    callback(err);
  })
}

exports.add = add;
exports.load = load;
exports.edit = edit;
exports.remove = remove;