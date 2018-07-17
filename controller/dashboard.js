var Budget = require('../models/budget');
var Voucher = require('../models/voucher');
var OrderActual = require('../models/orderactual');
var FCActual = require('../models/fcactual');
var YarnActual = require('../models/yarnactual');
var Material = require('../models/material');
var AdMaterial = require('../models/admaterial');
var OrdPay = require('../models/ordpay');
var TestFG = require('../models/testfg');
var Admini = require('../models/admini');
var Shipment = require('../models/shipment');

exports.load_dept_report = function(req, res) {
  var p1 = new Promise((resolve, reject) => {
    Budget.report_dept(function(err, list) {
      if(err) {
        reject(err);
      } else {
        resolve(list);
      }
    })
  })
  var p2 = new Promise((resolve, reject) => {
    Voucher.report_dept(function(err, list){
      console.log(list);
      if(err) {
        reject(err);
      } else {
        resolve(list);
      }
    })
  })
  var p = [];
  p.push(p1, p2);
  Promise.all(p).then(data => {
    console.log(data);
    var tmp = [];
    for(var i = 0; i < 12; i++) {      
      for(var j = 0; j < data[0].length;j++) {
        tmp.push({
          DeptIdx: data[0][j].DepIdx, DeptName: data[0][j].DeptName, Plan: data[0][j]['m'+(i+1)], Actual: 0, Month: i
        })
      };      
    }
    for(var i = 0; i < data[1].length; i++) {
      var b = true;
      for(var j = 0; j < tmp.length; j++) {
        if((tmp[j].Month == new Date(data[1][i].fetcha).getMonth()) && (tmp[j].DeptIdx == data[1][i].dept)) {
          tmp[j].Actual += data[1][i].sum1;
          b = false;
        }
      }
      if(b) {
        tmp.push({
          DeptIdx: data[1][i].dept, DeptName: data[1][i].deptName, Plan: 0, Actual: data[1][i].sum1, Month: new Date(data[1][i].fetcha).getMonth()
        })
      }
    }
    res.status(200).send({list: tmp});
  }).catch(err => {
    console.log(err);
    res.status(500).send();
  })
}

var getProfitOfOrder = function(Idx) {
  return new Promise((top_resolve, top_reject) => {
    var fcactual, yarnactual, material, admaterial, ordpay, frt, commision, testfg, postduty, admini, postother, shipment;
    new Promise((resolve, reject) => {
      FCActual.getProfitSum(Idx, function(err, data) {        
        if(err) {
          reject(err);
        } else {
          if(data[0].Profit == null) {            
            fcactual = 0;
          } else {
            fcactual = data[0].Profit;
          }          
          resolve();
        }
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        YarnActual.getProfitSum(Idx, function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit != null) {
              yarnactual = data[0].Profit;
            } else {
              yarnactual = 0;
            }
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        Material.getProfitSum(Idx, function(err, data) {
          if(err) {
            reject(err);
          } else {            
            if(data[0].Profit == null) {
              material = 0;
            } else {
              material = data[0].Profit;
            }
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        AdMaterial.getProfitSum(Idx, function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit == null) {
              admaterial = 0;
            } else{
              admaterial = data[0].Profit;
            }            
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        OrdPay.getProfitSum(Idx, function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit == null) {              
              ordpay = 0;
            } else {
              ordpay = data[0].Profit;
            }            
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        Voucher.getProfitSum(Idx, 'Post FRT Charge', function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit) {
              frt = data[0].Profit;
            } else{
              frt = 0;
            }            
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        Voucher.getProfitSum(Idx, 'Post Commission', function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit) {
              commision = data[0].Profit;
            } else {
              commision = 0;
            }            
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        TestFG.getProfitSum(Idx, function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit) {
              testfg = data[0].Profit;
            } else{
              testfg = 0;              
            }            
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        Voucher.getProfitSum(Idx, 'Post Duty', function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit) {
              postduty = data[0].Profit;
            } else {
              postduty = 0;
            }
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        Admini.getProfitSum(Idx, function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit != null) {
              admini = data[0].Profit;
            } else {
              admini = 0;
            }
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        Voucher.getProfitSum(Idx, 'Post Others', function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit != null) {
              postother = data[0].Profit;
            } else {
              postother = 0;
            }
            resolve();
          }
        })
      })
    }).then(() => {
      return new Promise((resolve, reject) => {
        Shipment.getProfitSum(Idx, function(err, data) {
          if(err) {
            reject(err);
          } else {
            if(data[0].Profit != null) {
              shipment = data[0].Profit;
            } else {
              shipment = 0;
            }            
            resolve();
          }
        })
      })
    }).then(() => {
      var t = shipment - (fcactual+yarnactual+material+admaterial+ordpay+frt+commision+testfg+postduty+admini+postother);      
      top_resolve(t);
    }).catch(err => {
      top_reject(err);
    })
  })
}

var getProfitByBuyer = function(buyer) {
  return new Promise((top_resolve, top_reject) => {
    new Promise((resolve, reject) => {
      OrderActual.findByBuyer(buyer, function(err, list){
        if(err) {
          reject(err);
        } else {
          resolve(list);
        }
      })
    }).then(orderlist =>{
      return new Promise((resolve, reject) => {
        var p = [];
        for(var i = 0; i < orderlist.length; i++) {
          p.push(getProfitOfOrder(orderlist[i].Idx));
        }
        Promise.all(p).then((data) => {
          var sum = 0;
          for(var i = 0; i < data.length; i++) {
            sum += data[i];
          }
          resolve(sum);
        }).catch(err => {
          reject(err);
        })
      })
    }).then(profit => {
      top_resolve(profit);
    }).catch(err => {
      top_reject(err);
    })
  })
}

exports.load_year_order_report = function(req, res) {
  new Promise((resolve, reject) => {
    OrderActual.findQtyByBuyer(function(err, list) {
      if(err) {
        reject(err);
      } else {        
        resolve(list);
      }      
    })
  }).then((list) => {
    var p = [];
    for(var i = 0; i < list.length; i++) {
      p.push(getProfitByBuyer(list[i].Buyer));
    }
    Promise.all(p).then(profits => {      
      for(var i = 0; i < profits.length; i++) {
        list[i].Profit = profits[i];
      }
      res.status(200).send({list: list});
    }).catch(err => {
      res.status(500).send();
    })
  })
}