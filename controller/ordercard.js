var OrderActual = require('../models/orderactual');
var Department = require('../models/dept');
var Customer = require('../models/customer');
var User = require('../models/user');
var PO = require('../models/po');
var Fabric = require('../models/fabric');
var Code = require('../models/code');
var FCPlan = require('../models/fcplan');
var FCActual = require('../models/fcactual');
var Yarn = require('../models/yarn');
var YarnPlan = require('../models/yarnplan');
var YarnActual = require('../models/yarnactual');
var Confirmation = require('../models/confirmation');

exports.load_init = function(req, res) {
  var p1 = new Promise((resolve, reject) => {
    Department.find_all(function(err, list) {
      if(err) {
        reject(err);
      } else {
        resolve(list);
      }
    })
  })
  var p2 = new Promise((resolve, reject) => {
    Customer.find_all(function(err, list) {
      if(err) {
        reject(err);
      } else {
        resolve(list);
      }
    })
  })
  var p3 = new Promise((resolve, reject) => {
    User.find_all(function(err, list) {
      if(err) {
        reject(err);
      } else {
        resolve(list);
      }
    })
  })
  var p4 = new Promise((resolve, reject) => {
    resolve([{
      Name: 'Price Term1',
      Idx: 1
    },{
      Name: 'Price Term2',
      Idx: 2
    }]);
  })
  var p5 = new Promise((resolve, reject) => {
    resolve([{
      Name: 'Payment Term1',
      Idx: 1
    },{
      Name: 'Payment Term2',
      Idx: 2
    }]);
  })
  var p6 = new Promise((resolve, reject) => {
    resolve([{
      Name: 'Origin List1',
      Idx: 1
    },{
      Name: 'Origin List2',
      Idx: 2
    }]);
  })
  var p7 = new Promise((resolve, reject) => {
    resolve([{
      Name: 'Factory List1',
      Idx: 1
    },{
      Name: 'Factory List2',
      Idx: 2
    }]);
  })
  var p8 = new Promise((resolve, reject) => {
    Fabric.find_all(function(err, list){
      if(err) {
        reject(err);
      } else {
        resolve(list);
      }
    })
  })
  var p9 = new Promise((resolve, reject) => {
    Code.find_all(function(err, list) {
      if(err) {
        reject(err);
      } else {
        resolve(list.filter(v => {
          return v.Classification == 'Fabric Type';
        }))
      }
    })
  })
  var p10 = new Promise((resolve, reject) => {
    Yarn.find_all(function(err, list) {
      if(err) {
        reject(err);
      } else {
        resolve(list);
      }
    })
  })
  var p = [];
  p.push(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10);
  Promise.all(p).then(lists => {
    res.status(200).send({
      isSuccess: true, dept_list: lists[0], cust_list: lists[1], usr_list: lists[2],
      p1_term_list: lists[3], p2_term_list: lists[4], ori_list: lists[5], fact_list: lists[6],
      fabric_list: lists[7], f_type_list: lists[8], yarn_list: lists[9]
    });
  })
  .catch(err => {
    console.log(err);
    res.status(500).send();
  })
}
exports.add = function(req, res) {
  switch(req.body.num) {
    case 1:
      break;
    case 2:
      PO.add(req.body, function(err, result) {
        if(err) {
          console.log(err);
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 3:
      FCPlan.add(req.body, function(err, result) {
        if(err) {
          console.log(err);
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 4:
      FCActual.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 5:
      YarnPlan.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
    case 6:
      YarnActual.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
  }  
}
exports.load = function(req, res) {
  switch(req.body.num) {
    case 2:
      PO.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 3:
      FCPlan.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 4:
      FCActual.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 5:
      YarnPlan.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 6:
      YarnActual.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 7:
      Confirmation.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list[0]});
        }
      })
  }
  
}
exports.delete = function(req, res) {
  switch(req.body.num) {
    case 1:
      break;
    case 2:
      PO.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 3:
      FCPlan.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 4:
      FCActual.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 5:
      YarnPlan.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 6:
      YarnActual.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
  }  
}
exports.edit = function(req, res) {
  switch(req.body.num) {
    case 2:
      PO.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 3:
      FCPlan.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 4:
      FCActual.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 5:
      YarnPlan.edit(req.body, function(err) {
        if(err) {
          console.log(err);
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 6:
      YarnActual.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
  }  
}
exports.confirm = function(req, res) {
  switch(req.body.num) {
    case 3:
      FCPlan.confirm(req.body.Idx, req.body.confirm, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 4:
      FCActual.confirm(req.body.Idx, req.body.confirm, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 5:
      YarnPlan.confirm(req.body.Idx, req.body.confirm, function(err) {
        if(err) {
          console.log(err);
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 6:
      YarnActual.confirm(req.body.Idx, req.body.confirm, function(err) {
        if(err) {
          console.log(err);
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
  }  
}
exports.confirm7 = function(req, res) {
  Confirmation.confirm(req.body, function(err) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true});
    }
  })
}