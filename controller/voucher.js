var Account = require('../models/account');
var Department = require('../models/dept');
var Customer = require('../models/customer');
var OrderActual = require('../models/orderactual');
var CostCenter = require('../models/costcenter');
var User = require('../models/user');
var Voucher = require('../models/voucher');
var VoucherHeader = require('../models/voucherheader');
var VoucherBody = require('../models/voucherbody');
var VoucherRoute = require('../models/voucherroute');
var VoucherGroup = require('../models/vouchergroup');

exports.load_acc_cus_dep_ord_user_list = function(req, res) {
  var p = [];
  var p1 = new Promise((resolve, reject) => {
    Account.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  });
  var p2 = new Promise((resolve, reject) => {
    Customer.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  });
  var p3 = new Promise((resolve, reject) => {
    Department.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  });
  var p4 = new Promise((resolve, reject) => {
    OrderActual.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  });
  var p5 = new Promise((resolve, reject) => {
    User.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  })
  p.push(p1, p2, p3, p4, p5);
  Promise.all(p).then((data) => {
    console.log(data);
    res.status(200).send({isSuccess: true,
      acc_list: data[0], cus_list: data[1], dep_list: data[2], ord_list: data[3], user_list: data[4]
    });
  }).catch(err => {
    console.log(err);
    res.status(500).send({isSuccess: false});
  })
}

exports.load_acc_cus_dep_cost_list = function(req, res) {
  var p = [];
  var p1 = new Promise((resolve, reject) => {
    Account.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  })
  var p2 = new Promise((resolve, reject) => {
    Customer.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  })
  var p3 = new Promise((resolve, reject) => {
    Department.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  })
  var p4 = new Promise((resolve, reject) => {
    CostCenter.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  })
  var p5 = new Promise((resolve, reject) => {
    User.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        resolve(rows);
      }
    })
  })
  p.push(p1,p2,p3,p4,p5);
  Promise.all(p).then((data) => {
    res.status(200).send({isSuccess: true,
      acc_list: data[0], cus_list: data[1], dep_list: data[2], cost_list: data[3], user_list: data[4]
    });
  }).catch(err => {
    console.log(err);
    res.status(500).send({isSuccess: false});
  })
}

exports.voucher_add = function(req, res) {
  var header = req.body.data.header;
  var body = req.body.data.body;
  var top = req.body.data.top;
  new Promise((resolve, reject) => {
    VoucherHeader.add(header, function(err, result) {
      if(err) {
        reject(err);
      } else {
        if(result == false) {
          resolve(result);
        } else {
          resolve(result);
        }        
      }
    })
  }).then((header_id) => {
    if(header_id == false) {
      res.status(200).send({isSuccess: false});
      return;      
    }
    var p = [];
    p.push(
      new Promise((resolve, reject) => {
        VoucherRoute.add(header_id, top, function(err) {
          if(err) {
            reject(err);
          } else {
            resolve();
          }
        })
      })
    )
    for(var i = 0; i<body.length; i++) {
      p.push(
        new Promise((resolve, reject) => {
          VoucherBody.add(header_id, body[i], function(err) {
            if(err) {
              reject(err);
            } else {
              resolve();
            }
          })
        })
      )
    }
    Promise.all(p).then(() => {
      res.status(200).send({isSuccess: true});
    }).catch(err => {
      res.status(500).send();
    })
  })
}

exports.generate_id = function(req, res) {
  var dpt = req.query.dpt;
  var date = req.query.date;  
  const search = function(id) {
    var vid = date+dpt+'00'+id;
    VoucherHeader.fine_one_Vidx(vid, function(err, result) {
      if(err) {
        res.status(500);
      } else if(result) {
        res.status(200).send({id: '00'+id});
      } else {
        search(++id);
      }
    })
  }
  search(1);
}

exports.voucher_list = function(req, res) {
  Voucher.find(req.body, function(err, list) {
    if(err) {
      console.log(err);      
      res.status(500).send();
    } else {      
      res.status(200).send({isSuccess: true, list: list});
    }
  })
}
exports.voucher_detail = function(req, res) {
  var p = [];
  p.push(
    new Promise((resolve, reject) => {
      VoucherHeader.get(req.body.Idx, function(err, rows) {
        if(err) {
          reject(err);
        } else {
          resolve(rows[0]);
        }
      })
    })
  )
  p.push(
    new Promise((resolve, reject) => {
      VoucherBody.get(req.body.Idx, function(err, rows) {
        if(err) {
          reject(err);
        } else {
          resolve(rows);
        }
      })
    })
  )
  p.push(
    new Promise((resolve, reject) => {
      VoucherRoute.get(req.body.Idx, function(err, rows) {
        if(err) {
          reject(err);
        } else {
          resolve(rows[0]);
        }
      })
    })
  )
  Promise.all(p).then((data) => {
    console.log(data);
    res.status(200).send({
      isSuccess: true,
      header: data[0],
      body: data[1],
      top: data[2]
    })
  }).catch(err => {
    res.status(500).send();
  })
}
exports.voucher_update = function(req, res) {
  var p = [];
  p.push(
    new Promise((resolve, reject) => {
      VoucherHeader.update(req.body.header, function(err) {
        if(err) {
          reject(err);
        } else {
          resolve();
        }
      })
    })
  );
  p.push(
    new Promise((resolve, reject) => {
      VoucherRoute.update(req.body.top, function(err) {
        if(err) reject(err);
        else resolve();
      })
    })
  )
  for(var i = 0; i < req.body.body.length; i++) {
    p.push(
      new Promise((resolve, reject) => {
        VoucherBody.update(req.body.body[i], req.body.header.oldid, function(err) {
          if(err) reject(err);
          else resolve();
        })
      })
    )
  }
  for(var i = 0; i < req.body.remove.length; i++) {
    p.push(
      new Promise((resolve, reject) => {
        VoucherBody.remove(req.body.remove[i].oldid, function(err) {
          if(err) reject(err);
          else resolve();
        })
      })
    )
  }
  console.log(req.body);
  Promise.all(p).then(()=>{
    res.status(200).send({isSuccess: true});
  }).catch(err => {
    console.log(err);
    res.status(500).send();
  })  
}
exports.report_list = function(req, res) {
  var getAmount = function(body) {
    var sum = 0;
    for(var i = 0; i < body.length; i++) {
      sum += (Number(body[i].cantidad) * Number(body[i].unitario));
    }
    return sum;
  }
  var getMonth = function(d) {
    return new Date(d).getMonth()+1;
  }
  var getYear = function(d) {
    return new Date(d).getYear()+1900;
  }
  var groupByAccount = function(list) {
    var tmp = [];
    for(var i = 0; i < list.length; i++) {
      var b = true;
      for(var j = 0; j < tmp.length; j++) {
        if(list[i].acc_idx == tmp[j].acc_idx) {
          tmp[j].m1 += list[i].m1;
          tmp[j].m2 += list[i].m2;
          tmp[j].m3 += list[i].m3;
          tmp[j].m4 += list[i].m4;
          tmp[j].m5 += list[i].m5;
          tmp[j].m6 += list[i].m6;
          tmp[j].m7 += list[i].m7;
          tmp[j].m8 += list[i].m8;
          tmp[j].m9 += list[i].m9;
          tmp[j].m10 += list[i].m10;
          tmp[j].m11 += list[i].m11;
          tmp[j].m12 += list[i].m12;
          b = false;
          break;
        }
      }
      if(b) tmp.push(list[i]);
    }
    return tmp;
  }
  Voucher.find_all(function(err, rows) {
    console.log(err);
    if(err) {
      res.status(500).send({isSuccess: false});
    } else {
      var list = [];
      if(req.body.department) {
        rows = rows.filter(v => {
          return v.DeptIdx == req.body.department.DeptIdx;
        })
      }
      
      for(var i = 0; i < rows.length; i++) {
        var m = getMonth(rows[i].Fetcha);
        var amount = rows[i].sum1;
        var year = getYear(rows[i].Fetcha);
        if(year != req.body.year.YearName) continue;
        list.push({
          'acc_idx': rows[i].Cuenta,
          'm1': m==1?amount:0,
          'm2': m==2?amount:0,
          'm3': m==3?amount:0,
          'm4': m==4?amount:0,
          'm5': m==5?amount:0,
          'm6': m==6?amount:0,
          'm7': m==7?amount:0,
          'm8': m==8?amount:0,
          'm9': m==9?amount:0,
          'm10': m==10?amount:0,
          'm11': m==11?amount:0,
          'm12': m==12?amount:0,
        });        
      }
      var tmp = groupByAccount(list);
      res.status(200).send({isSuccess: true, list: tmp});
    }
  })
}
exports.vouchers = function(req, res) {
  const getYear = function(d) {
    return new Date(d).getYear()+1900;
  }
  const getMonth = function(d) {
    return new Date(d).getMonth() + 1;
  }
  Voucher.find({}, function(err, list) {
    if(err) {
      res.status(500).send({isSuccess: false});
    } else { 
      // Filter By Account
      list = list.filter(v => {
        return Number(v.Cuenta) == Number(req.body.acc);
      })      
      //Filter By Year
      list = list.filter(v => {
        return getYear(v.Fetcha) == req.body.year;
      })
      // Filter By Month
      if(req.body.month != 0) {
        list = list.filter(v => {
          return getMonth(v.Fetcha) == req.body.month;
        })
      }
      res.status(200).send({isSuccess: true, list: list});
    }
  })  
}
// For Voucher List
exports.load_acc = function(req, res) {
  Account.find_all(function(err, rows) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true, list: rows});
    }
  })
}
exports.add_group = function(req, res){
  VoucherGroup.add(req.body, function(err, isSuccess) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: isSuccess});
    }
  })
}
exports.load_group = function(req, res) {
  VoucherGroup.load_group(req.body.PIdx, function(err, list) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({list: list});
    }
  })
}
exports.add_account = function(req, res) {
  Account.setGroup(req.body, function(err) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true});
    }
  })
}
exports.group_remove = function(req, res) {
  VoucherGroup.remove(req.body.Idx, function(err, list) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send();
    }
  })
}
exports.acc_group_remove = function(req, res) {
  Account.removeGroup(req.body.Idx, function(err, list) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send();
    }
  })
}
exports.load_group_list = function(req, res) {
  VoucherGroup.find_all(function(err, list) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({list: list});
    }
  })
}
// For Voucher Report 2
exports.report_list2 = function(req, res) {
  var getAmount = function(body) {
    var sum = 0;
    for(var i = 0; i < body.length; i++) {
      sum += (Number(body[i].cantidad) * Number(body[i].unitario));
    }
    return sum;
  }
  var getMonth = function(d) {
    return new Date(d).getMonth()+1;
  }
  var getYear = function(d) {
    return new Date(d).getYear()+1900;
  }
  var getWeek = function(d1) {
    var d = new Date(d1);
    var dayNum = d.getUTCDay() || 7;
    d.setUTCDate(d.getUTCDate() + 4 - dayNum);
    var yearStart = new Date(Date.UTC(d.getUTCFullYear(),0,1));
    return Math.ceil((((d - yearStart) / 86400000) + 1)/7)
  }
  var groupByAccount = function(list) {
    var tmp = [];
    for(var i = 0; i < list.length; i++) {
      var b = true;
      for(var j = 0; j < tmp.length; j++) {
        if(req.body.type.Value == 1) {
          if(list[i].acc_idx == tmp[j].acc_idx) {
            list[i].amount += tmp[j].amount;          
            b = false;
            break;
          }
        } else if(req.body.type.Value == 2) {
          if((list[i].acc_idx == tmp[j].acc_idx) && (list[i].month == tmp[j].month)) {
            list[i].amount += tmp[j].amount;
            b = false;
            break;
          }
        } else if(req.body.type.Value == 3) {
          if((list[i].acc_idx == tmp[j].acc_idx) && (list[i].week == tmp[j].week)) {
            list[i].amount += tmp[j].amount;
            b = false;
            break;
          }
        }        
      }
      if(b) tmp.push(list[i]);
    }
    return tmp;
  }
  Voucher.find_all(function(err, rows) {
    if(err) {
      res.status(500).send({isSuccess: false});
    } else {
      var list = [];      
      for(var i = 0; i < rows.length; i++) {
        var m = getMonth(rows[i].Fetcha);
        var amount = rows[i].sum1;
        var year = getYear(rows[i].Fetcha);
        var week = getWeek(rows[i].Fetcha);        
        if(year != req.body.year.Value) continue;
        console.log(req.body);
        if((req.body.type.Value == 2) && (m != req.body.month.Value)) continue;
        if((req.body.type.Value == 3) && (week != req.body.week.Value)) continue;
        list.push({
          'acc_idx': rows[i].Cuenta,
          'year': year,
          'month': m,
          'week': week,
          'amount': amount
        });
      }
      var tmp = groupByAccount(list);
      res.status(200).send({isSuccess: true, list: tmp});
    }
  })
}