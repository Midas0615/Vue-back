var express = require('express');
var router = express.Router();
var passport = require('passport');
require('../config/passport')(passport);


router.use('/my',  passport.authenticate('jwt', { session: false}), function(req, res, next) {  
  next();
})

module.exports = router;
