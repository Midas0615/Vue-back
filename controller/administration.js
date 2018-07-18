var Admin = require('../models/admin');
var Auth = require('../models/auth');

exports.load_user_list = function(req, res) {
  Admin.findAllUser(function(err, rows) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true, list: rows});
    }
  })
}

exports.add_auth = function(req, res) {
  Auth.add(req.body, function(err, result) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: result});
    }
  })
}
exports.update_auth = function(req, res) {
  Auth.update(req.body, function(err) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true});
    }
  })
}
exports.load_auth = function(req, res) {
  Auth.load(req.body, function(err, rows) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true, list: rows});
    }
  })
}
exports.remove_auth = function(req, res) {
  Auth.remove(req.body, function(err) {
    if(err) {
      res.status(500).send();
    } else {
      res.status(200).send({isSuccess: true})
    }
  })
}