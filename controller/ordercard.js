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
var Approval = require('../models/approval');
var OrdPay = require('../models/ordpay');
var Shipment = require('../models/shipment');
var OverShort = require('../models/overshort');
var Accident = require('../models/accident');
var Admini = require('../models/admini');
var Material = require('../models/material');
var AdMaterial = require('../models/admaterial');
var TestFG = require('../models/testfg');
var Summary = require('../models/summary');
var OrderAttachments = require('../models/attachments');

var formidable = require('formidable');
var fs = require('fs');
var path = require('path');
var uniqid = require('uniqid');

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
  var p11 = new Promise((resolve, reject) => {
    Code.find_all(function(err, list) {
      if(err) {
        reject(err);
      } else {
        resolve(list.filter(v => {
          return v.Classification == 'Operation';
        }))
      }
    })
  })
  var p = [];
  p.push(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);
  Promise.all(p).then(lists => {
    res.status(200).send({
      isSuccess: true, dept_list: lists[0], cust_list: lists[1], usr_list: lists[2],
      p1_term_list: lists[3], p2_term_list: lists[4], ori_list: lists[5], fact_list: lists[6],
      fabric_list: lists[7], f_type_list: lists[8], yarn_list: lists[9], oper_list: lists[10]
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
      break;
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
      break;
    case 9:
      OrdPay.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 10:
      Shipment.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 11:
      OverShort.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 12:
      Accident.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 13:
      Admini.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 14:
      Material.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 15:
      AdMaterial.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 16:
      TestFG.add(req.body, function(err, result) {
        if(err) {
          res.status(500).send();
        } else if(result == false) {
          res.status(200).send({isSuccess: false});
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 17:
      Summary.add(req.body, function(err, result) {
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
          console.log(err);
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list[0]});
        }
      })
      break;
    case 8:
      Approval.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list[0]});
        }
      })
      break;
    case 9:
      OrdPay.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 10:
      Shipment.load(req.body.ordidx, function(err, list) {
        if(err) {
          console.log(err);
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 11:
      OverShort.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 12:
      Accident.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 13:
      Admini.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 14:
      Material.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 15:
      AdMaterial.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 16:
      TestFG.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 17:
      Summary.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
        }
      })
      break;
    case 18:
      OrderAttachments.load(req.body.ordidx, function(err, list) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true, list: list});
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
    case 9:
      OrdPay.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 10:
      Shipment.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 11:
      OverShort.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 12:
      Accident.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 13:
      Admini.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 14:
      Material.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 15:
      AdMaterial.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 16:
      TestFG.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 17:
      Summary.remove(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true})
        }
      })
      break;
    case 18:
      OrderAttachments.remove(req.body, function(err) {
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
    case 9:
      OrdPay.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 10:
      Shipment.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 11:
      OverShort.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 12:
      Accident.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 13:
      Admini.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 14:
      Material.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 15:
      AdMaterial.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 16:
      TestFG.edit(req.body, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 17:
      Summary.edit(req.body, function(err) {
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
    case 12:
      Accident.confirm(req.body.Idx, req.body.confirm, function(err) {
        if(err) {
          console.log(err);
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 13:
      Admini.confirm(req.body.Idx, req.body.confirm, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 14:
      Material.confirm(req.body.Idx, req.body.data, function(err) {
        if(err) {
          res.status(500).send();
        } else {
          res.status(200).send({isSuccess: true});
        }
      })
      break;
    case 15:
      AdMaterial.confirm(req.body.Idx, req.body.data, function(err) {
        if(err) {
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
exports.confirm8 = function(req, res) {
  Approval.confirm(req.body, function(err) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true});
    }
  })
}
exports.attachment = function(req, res) {
  var form = new formidable.IncomingForm();
  form.parse(req, function(err, fields, files) {
    var filename;    
    if(files.file != undefined){
      filename = uniqid();
      var old_path = files.file.path;
      var file_size = files.file.size;
      var file_ext = files.file.name.split('.').pop();
      var new_path = path.join(appRoot, '/public/uploads/attachments/', filename + '.' + file_ext);
      fs.readFile(old_path, function(err, data) {
        fs.writeFile(new_path, data, function(err) {
          fs.unlink(old_path, function(err) {
            if (err) {
              console.log('uploading failure!');
            } else {
              console.log('uploading success!');
            }
          });
        });
      });    
      OrderAttachments.add(fields, filename + '.' + file_ext, function(err, result){
        if(err){
          res.json({isSuccess:false});
        }else{
          res.json({isSuccess:result});
        }
      })
    }
  });
}