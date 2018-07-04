var express = require('express');
var router = express.Router();
var passport = require('passport');
require('../config/passport')(passport);

var budget = require('../controller/budget');

router.use('/',  passport.authenticate('jwt', { session: false}), function(req, res, next) {  
  next();
})

router.post('/budget/budget_list', budget.budget_list);
router.post('/budget/load_acc_cost_dep_list', budget.load_acc_cost_dep_list);

module.exports = router;
