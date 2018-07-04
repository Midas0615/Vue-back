var express = require('express');
var router = express.Router();
var jwt = require('jsonwebtoken');

var User = require("../models/user");
var config = require('../config/const').config;

router.post('/register', function(req, res) {
  User.register(req.body, function(err, status, user) {
    if(err) {
      res.status(401).send({success: false});
    } else if (status == false) {
      res.send({success: false, err: 2});
    } else {
      res.send({success: true});
    }
  })
});

router.post('/login', function(req, res) {
  User.login(req.body.email, req.body.password, function(err, status, user) {
    if (!user) {
      res.status(401).send({success: false, msg: 'Authentication failed. User not found.'});
    } else {
      if(status) {
        // if user is found and password is right create a token
        var token = jwt.sign(JSON.stringify(user), config.secret);
        // return the information including token as JSON
        res.status(200).send({success: true, username: user.name, token: 'JWT ' + token});
      } else {
        res.status(401).send({success: false, msg: 'Authentication failed. Wrong password.'});
      }      
    }    
  })
});

module.exports = router;