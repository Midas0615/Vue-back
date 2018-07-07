var Account = require('../models/account');
var Department = require('../models/dept');
var Customer = require('../models/customer');
var OrderActual = require('../models/orderactual');
var CostCenter = require('../models/costcenter');
var User = require('../models/user');
var Voucher = require('../models/voucher');

exports.load_acc_cus_dep_ord_user_list = function(req, res) {
  var acc_list = [], cus_list = [], dep_list = [], ord_list = [], user_list = [];
  new Promise((resolve, reject) => {
    Account.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        acc_list = rows;
        resolve();
      }
    })
  }).then(() => {
    return new Promise((resolve, reject) => {
      Customer.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          cus_list = rows;
          resolve();
        }
      })
    })    
  }).then(() => {
    return new Promise((resolve, reject) => {
      Department.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          dep_list = rows;
          resolve();
        }
      })
    })
  }).then(() => {
    return new Promise((resolve, reject) => {
      OrderActual.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          order_list = rows;
          resolve();
        }
      })
    })
  }).then(() => {
    return new Promise((resolve, reject) => {
      User.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          user_list = rows;
          resolve();
        }
      })
    })
  }).then(() => {
    res.status(200).send({isSuccess: true,
      acc_list: acc_list, cus_list: cus_list, dep_list: dep_list, ord_list: ord_list, user_list: user_list
    });
  }).catch(err => {
    console.log(err);
    res.status(200).send({isSuccess: false});
  })
}

exports.load_acc_cus_dep_cost_list = function(req, res) {
  var acc_list = [], cus_list = [], dep_list = [], cost_list = [], user_list = [];
  new Promise((resolve, reject) => {
    Account.find_all(function(err, rows) {
      if(err) {
        reject(err);
      } else {
        acc_list = rows;
        resolve();
      }
    })
  }).then(() => {
    return new Promise((resolve, reject) => {
      Customer.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          cus_list = rows;
          resolve();
        }
      })
    })    
  }).then(() => {
    return new Promise((resolve, reject) => {
      Department.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          dep_list = rows;
          resolve();
        }
      })
    })
  }).then(() => {
    return new Promise((resolve, reject) => {
      CostCenter.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          cost_list = rows;
          resolve();
        }
      })
    })
  }).then(() => {
    return new Promise((resolve, reject) => {
      User.find_all(function(err, rows) {
        if(err) {
          reject(err);
        } else {
          user_list = rows;
          resolve();
        }
      })
    })
  }).then(() => {
    res.status(200).send({isSuccess: true,
      acc_list: acc_list, cus_list: cus_list, dep_list: dep_list, cost_list: cost_list, user_list: user_list
    });
  }).catch(err => {
    console.log(err);
    res.status(200).send({isSuccess: false});
  })
}

exports.voucher_add = function(req, res) {
  Voucher.add(req.body.vo_id, req.user.email, JSON.stringify(req.body.data), function(err, result) {
    if(err) {
      res.status(500).send({isSuccess: false});
    } else {
      res.status(200).send({isSuccess: true, status: result});
    }
  })
}

exports.voucher_list = function(req, res) {
  Voucher.find_all(function(err, rows) {
    if(err) {
      res.status(500).send({isSuccess: false});
    } else {
      var list = [];
      for(var i = 0; i < rows.length; i++) {
        rows[i].Txt = JSON.parse(rows[i].Txt);
        list.push(rows[i]);
      }
      res.status(200).send({isSuccess: true, list: list});
    }
  })
}