var express = require('express');
var router = express.Router();
var passport = require('passport');
require('../config/passport')(passport);

var budget = require('../controller/budget');
var voucher = require('../controller/voucher');

router.use('/',  passport.authenticate('jwt', { session: false}), function(req, res, next) {  
  next();
})

router.post('/budget/budget_list', budget.budget_list);
router.post('/budget/load_acc_cost_dep_list', budget.load_acc_cost_dep_list);
router.post('/budget/budget_add', budget.budget_add);
router.post('/budget/budget_remove', budget.budget_remove);
router.post('/budget/budget_edit', budget.budget_edit);
router.post('/budget/upload_excel', budget.upload_excel);
router.post('/budget/report_list', budget.report_list);

router.post('/voucher/load_acc_cus_dep_ord_user_list', voucher.load_acc_cus_dep_ord_user_list);
router.post('/voucher/load_acc_cus_dep_cost_list', voucher.load_acc_cus_dep_cost_list);
router.post('/voucher/voucher_add', voucher.voucher_add);
router.post('/voucher/voucher_list', voucher.voucher_list);
module.exports = router;
