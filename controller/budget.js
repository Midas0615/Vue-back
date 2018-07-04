var Account = require('../models/account');
var CostCenter = require('../models/costcenter');
var Department = require('../models/dept');
var Budget = require('../models/budget');

var formidable = require('formidable');
var fs = require('fs');
var path = require('path');
var uniqid = require('uniqid');

exports.budget_list = function(req, res){
  Budget.find_all(req.body, function(err, rows) {
    if(err) {
      res.status(500).send({isSuccess: false});
    } else {
      res.status(200).send({isSuccess: true, list: rows});
    }
  })
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
exports.budget_add = function(req, res) {
  Budget.add(req.body, function(err, result) {
    if(err) {
      res.status(500).send({isSuccess: false});
    } else {
      res.status(200).send({isSuccess: true, status: result});
    }
  })
}
exports.budget_remove = function(req, res) {
  Budget.remove(req.body.idx, function(err) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true});
    }
  })
}
exports.budget_edit = function(req, res) {
  Budget.edit(req.body, function(err) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true});
    }
  })
}

exports.report_list = function(req, res) {
  console.log(req.body);
  Budget.report(req.body, function(err, rows) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true, list: rows});
    }
  })  
}

var saveExcelData = function(path, callback) {
}
exports.upload_excel = function(req, res) {
  var form = new formidable.IncomingForm();
  form.parse(req, function(err, fields, files) {
    var filename;
    if(files.file != undefined){
      filename = uniqid();
      var old_path = files.file.path;
      var file_size = files.file.size;
      var file_ext = files.file.name.split('.').pop();    
      var new_path = path.join(appRoot, '/public/uploads/budget/excel/', filename + '.' + file_ext);
      fs.readFile(old_path, function(err, data) {
        fs.writeFile(new_path, data, function(err) {
          fs.unlink(old_path, function(err) {
            if (err) {
              console.log('uploading failure!');
              res.json({isSuccess: false});
            } else {
              console.log('uploading success!');
              res.json({isSuccess: true});
              // saveExcelData(new_path, function(err, result) {
              //   if(err) {
              //     res.json({isSuccess: false});
              //   } else {
              //     res.json({isSuccess: true, fail: result});
              //   }
              // })
            }
          });
        });
      });
    }
  });
}