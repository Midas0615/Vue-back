var Account = require('../models/account');
var Department = require('../models/dept');
var Customer = require('../models/customer');
var OrderActual = require('../models/orderactual');
var User = require('../models/user');

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