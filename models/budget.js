var db = require('./db');

var formatdate = function(d) {
  var month_names = ["Jan", "Feb", "Mar", 
    "Apr", "May", "Jun", "Jul", "Aug", "Sep", 
    "Oct", "Nov", "Dec"];
    
  var today = new Date(d);
  var day = today.getDate();
  var month_index = today.getMonth();
  var year = today.getFullYear();
  return day + "-" + month_names[month_index] + "-" + year
}

var create = function(body, callback) {
  db.query(`
    INSERT INTO budget (AccountIdx,CostIdx,DepIdx,team,pdate,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,revised_date) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
  `, [body.account, body.cost, body.department, body.team, body.date.split('T')[0], body.m1, body.m2, body.m3,
      body.m4, body.m5, body.m6, body.m7, body.m8, body.m9, body.m10, body.m11, body.m12, formatdate(body.revised_date)],
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
  db.query('SELECT * FROM budget WHERE AccountIdx = ? AND CostIdx = ? AND DepIdx = ? AND team = ? AND pdate = ?',
    [body.account, body.cost, body.department, body.team, body.date.split('T')[0]], function(err, rows) {
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

var find_all = function(body, callback) {
  var q = ' WHERE';
  var arr = [];
  if(body.account != null) {
    q += ' AccountIdx = ? AND';
    arr.push(body.account.Idx);
  }
  if(body.cost != null) {
    q += ' CostIdx = ? AND';
    arr.push(body.cost.CostcenterIdx);
  }
  if(body.department != null) {
    q += ' DepIdx = ? AND';
    arr.push(body.department.DeptIdx);
  }
  if(body.team != ''){
    q += ' team = ? AND';
    arr.push(body.team);
  }
  if(body.date != '') {
    q += ' pdate >= ? AND pdate <= ? AND';
    arr.push(body.date.YearName + '-01-01');
    arr.push(body.date.YearName + '-12-31');
  }
  if(arr.length > 0) {
    q = 'SELECT * FROM budget' + q;
    q = q.substring(0, q.lastIndexOf(" "));
  } else {
    q = 'SELECT * FROM budget';
  }
  db.query(q, arr, function(err, rows) {
    callback(err, rows);
  });
}

var remove = function(idx, callback) {
  db.query('DELETE FROM budget WHERE Idx = ?', [idx], function(err){
    if(err){
      return callback(err);
    }else{
      return callback(null);
    }
  })
}

var edit = function(body, callback) {
  db.query('UPDATE budget SET ? WHERE Idx = ?',
    [{AccountIdx: body.account, CostIdx: body.cost, DepIdx: body.department, team: body.team, pdate: body.date.split('T')[0],
      m1: body.m1, m2: body.m2, m3: body.m3, m4: body.m4, m5: body.m5, m6: body.m6, m7: body.m7, m8: body.m8, m9: body.m9, m10: body.m10,
      m11: body.m11, m12: body.m12, revised_date: formatdate(body.revised_date)
    }, body.idx],
  function(err){
    if(err)
      return callback(err);
    return callback(null);
  })
}

var report = function(body, callback) {
  var q = ' WHERE';
  var arr = [];
  if(body.department != null) {
    q += ' DepIdx = ? AND';
    arr.push(body.department.DeptIdx);
  }
  if(body.cost != null) {
    q += ' CostIdx = ? AND';
    arr.push(body.cost.CostcenterIdx);
  }
  if(body.year != null) {
    q += ' pdate >= ? AND pdate <= ? AND';
    arr.push(body.year.YearName+'-01-01');
    arr.push(body.year.YearName+'-12-31');
  }
  if(arr.length > 0) {
    q = `SELECT AccountIdx, sum(m1) as m1, sum(m2) as m2, sum(m3) as m3, sum(m4) as m4, sum(m5) as m5, sum(m6) as m6,
        sum(m7) as sm7, sum(m8) as m8, sum(m9) as m9, sum(m10) as m10, sum(m11) as m11, sum(m12) as m12 FROM budget` + q;
    q = q.substring(0, q.lastIndexOf(" "));
    q += ` GROUP BY AccountIdx`;
  } else {
    q = `SELECT AccountIdx, sum(m1) as m1, sum(m2) as m2, sum(m3) as m3, sum(m4) as m4, sum(m5) as m5, sum(m6) as m6,
        sum(m7) as sm7, sum(m8) as m8, sum(m9) as m9, sum(m10) as m10, sum(m11) as m11, sum(m12) as m12 FROM budget GROUP BY AccountIdx`;
  }
  db.query(q, arr, function(err, rows) {
    callback(err, rows);
  });
}

exports.add = add;
exports.find_all = find_all;
exports.remove = remove;
exports.edit = edit;
exports.report = report;