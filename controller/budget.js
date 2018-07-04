var Account = require('../models/account');
var CostCenter = require('../models/costcenter');
var Department = require('../models/dept');

exports.budget_list = function(req, res){
  console.log(req.body);
  res.status(200).send({isSuccess: true});
}
exports.load_acc_cost_dep_list = function(req, res) {
  var acc_list = [], cost_list = [], dep_list = [];
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
    res.status(200).send({isSuccess: true, acc_list: acc_list, cost_list: cost_list, dep_list: dep_list});
  }).catch(err => {
    console.log(err);
    res.status(200).send({isSuccess: false});
  })
}