var OrderActual = require('../models/orderactual');
var Department = require('../models/dept');
var Customer = require('../models/customer');

exports.load_dept_buyer = function(req, res){
  var p1 = new Promise((resolve, reject) => {
    Department.find_all(function(err, list) {
      if(err) reject(err);
      else resolve(list);
    })
  })
  var p2 = new Promise((resolve, reject) => {
    Customer.find_all((err, list) => {
      if(err) {
        reject(err);
      } else {
        list = list.filter(v => {
          return v.Classification == 24;
        })
        resolve(list);
      }
    })
  })
  var p = [];
  p.push(p1); p.push(p2);
  Promise.all(p).then((lists)=>{
    res.status(200).send({isSuccess: true, dept_list: lists[0], buyer_list: lists[1]});
  })
  .catch(err => {
    res.status(500).send({isSuccess: false});    
  })
}

exports.load_order_list = function(req, res){
  OrderActual.find_all(function(err, list) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true, list: list});
    }
  })
}