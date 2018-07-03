var express = require('express');
var router = express.Router();
var jwt = require('jsonwebtoken');
var nodemailer = require('nodemailer');
var bcrypt = require('bcrypt-nodejs');

var User = require("../models/user");
var TokenModel = require('../models/token');
var ResetTokenModel = require('../models/reset');
var smtfConfig = require('../config/smtpConfig');

router.post('/register', function(req, res) {

  /**
   * To send email verification
   */
  
  var smtpTransport = nodemailer.createTransport(smtfConfig);
  var mailOptions,host,link;

  const sendVerifyEmail = (token, usr) =>{    
    link="http://"+env.host+"/api/verify?token="+token+'&id='+usr._id;
    mailOptions={
      to : usr.email,
      subject : "Please confirm your Email account",
      html : "Hello,<br> Please Click on the link to verify your email.<br><a href="+link+">Click here to verify</a>" 
    }
    smtpTransport.sendMail(mailOptions, function(error, response){
      if(error){
        console.log(error);
      }else{
        console.log(response);
      }
    });
  };
  const generateToken = (usr) => {    
    var id = usr._id;
    var newToken = new TokenModel();
    newToken.id = id;
    newToken.token = newToken.generateToken();
    newToken.save(function(err) {
      if (err) {
        console.log(err);
      }        
      sendVerifyEmail(newToken.token, usr);
    });
  }  

  if (!req.body.email || !req.body.password) {
    res.json({status: 2, msg: 'Please pass email and password.'});
  } else {    
    User.findOne({
      email: req.body.email
    }, function(err, user) {
      if (err) throw err;  
      if (user) {
        res.json({status: 1, msg: 'Email is already used.'});
      } else {
        var newUser            = new User();
        newUser.email    = req.body.email;
        newUser.password = req.body.password;
        newUser.firstname = '';
        newUser.lastname = '';
        // save the user        
        newUser.save(function(err) {
          if (err) {
            return res.json({status: 2, msg: err});
          }
          generateToken(newUser);
          res.json({status: 0, msg: 'Successful created new user.'});
        });
      }
    });    
  }
});

router.get('/verify', async function(req, res){
  var token = req.query.token;
  var id = req.query.id;
  var tokenModel = await TokenModel.find({token: token, id: id}).exec();
  if(tokenModel[0] == undefined){
    res.json({text: 'Token is not existed or expired.'});
  }else{
    User.update({'_id': id}, {$set:{active: true}}, function(err, data){
      if(err)
        res.json({text: 'Error while updating verifying user. Please contact support team.'});
      else
        res.json({text: 'Successfully verified.'});
    });
  };
});

router.post('/login', function(req, res) {
  console.log(req.body);
  User.findOne({
    email: req.body.email
  }, function(err, user) {
    if (err) throw err;

    if (!user) {
      res.status(401).send({success: false, msg: 'Authentication failed. User not found.'});
    } else {
      // check if password matches
      user.comparePassword(req.body.password, function (err, isMatch) {
        if (isMatch && !err) {
          // if user is found and password is right create a token
          var token = jwt.sign(user.toJSON(), config.secret);
          // return the information including token as JSON
          res.json({username: user.firstname, token: 'JWT ' + token, active: user.active});
        } else {
          res.status(401).send({success: false, msg: 'Authentication failed. Wrong password.'});
        }
      });
    }
  });
});

router.post('/forget', async function(req, res){  
  var email = req.body.email;  
  var user = await User.find({'email': email}).exec();
  if(user.length == 1){
    var smtpTransport = nodemailer.createTransport(smtfConfig);
    var mailOptions,host,link;

    const sendResetEmail = (token, id) =>{
      host=env.reset;
      link="http://"+host+"/reset?token="+token+'&id='+id;
      mailOptions={
        to : email,
        subject : "Reset your password",
        html : "Hello,<br> You are receiving this email because you (or someone else) have requested the reset of the password for your account.<br>Please click on the following link, or paste this into your browser to complete the process:<br>"
          + "<a href=" +link+">Click here to verify</a>"
      }
      smtpTransport.sendMail(mailOptions, function(error, response){
        if(error){
          res.json({status: 3, msg: 'Error while sending email.'});          
        }else{
          res.json({status: 1, msg: 'Message is sent successfully.'});
        }
      });
    };
    var id = user[0]._id;
    var newToken = new ResetTokenModel();
    newToken.id = id;
    newToken.token = newToken.generateToken();
    newToken.save(function(err) {
      if (err) {
        res.json({status: 3, msg: 'Error while generating token.'})
      }
        
      sendResetEmail(newToken.token, newToken.id);
    });
   }else{
    res.json({status: 3, msg: 'Email is not exist.'});
  }
});

router.post('/reset', async function(req, res){
  var token = req.body.token;
  var id = req.body.id;
  var pwd = req.body.password;
  var resetTokenModel = await ResetTokenModel.find({token: token, id: id}).exec();
  const generateHash = (password) =>{
    var bcrypt   = require('bcrypt-nodejs');
    return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
  }
  if(resetTokenModel[0] == undefined){
    res.json({status: 0, msg: 'Reset Token has expired or not existed. Please try again.'});
  }else{
    ResetTokenModel.find({token: token, id: id}).remove().exec();
    var user = await User.find({'_id': id}).exec();
    if(user.length == 1) {
      const generatePassword = function(pwd, cb) {
        bcrypt.genSalt(10, function (err, salt) {
          if (err) {                
              return cb(err);
          }
          bcrypt.hash(pwd, salt, null, function (err, hash) {                
              if (err) {                    
                  return cb(err);
              }
              cb(null, hash);
          });
        });
      }
      generatePassword(pwd, function(err, pwd = null) {
        if(err) {
          res.json({status: 0, msg: 'Password is not generated. Please contact support team.'});
        } else {
          User.update({'_id': id}, {$set:{'password': pwd}}, function(err, data){
            if(err) {
              res.json({status: 0, msg: 'Password is not updated. Please contact support team.'});
            }
            else {
              res.json({status: 1});
            }
          });
        }
      })
    } else {
      res.json({status: 0, msg: 'User is not exist. Please contact support team.'});
    }    
  }
});