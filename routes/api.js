var express = require('express');
var router = express.Router();
var passport = require('passport');
require('../config/passport')(passport);
var path = require('path');
var budget = require('../controller/budget');
var voucher = require('../controller/voucher');
var order = require('../controller/order');
var ordercard = require('../controller/ordercard');
var dashboard = require('../controller/dashboard');

router.get('/order/ordercard/attach_download', function(req, res) {
  res.sendFile(path.join(appRoot, '/public/uploads/attachments/'+req.query.name));
});

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
router.post('/voucher/generate_id', voucher.generate_id);
router.post('/voucher/voucher_add', voucher.voucher_add);
router.post('/voucher/voucher_list', voucher.voucher_list);
router.post('/voucher/voucher_detail', voucher.voucher_detail);
router.post('/voucher/voucher_update', voucher.voucher_update);
router.post('/voucher/report_list', voucher.report_list);
router.post('/voucher/vouchers', voucher.vouchers);
router.post('/voucher/vouchers2', voucher.vouchers2);
// Voucher Group
router.post('/voucher/load_acc_list', voucher.load_acc);
router.post('/voucher/group/add_group', voucher.add_group);
router.post('/voucher/group/load_group', voucher.load_group);
router.post('/voucher/group/add_account', voucher.add_account);
router.post('/voucher/group/remove', voucher.group_remove);
router.post('/voucher/acc_group_remove', voucher.acc_group_remove);

router.post('/voucher/report_list2', voucher.report_list2);
router.post('/voucher/load_group_list', voucher.load_group_list);

router.post('/order/load_dept_buyer', order.load_dept_buyer);
router.post('/order/order_list', order.load_order_list);
router.post('/order/load', order.load_order);

router.post('/order/order_card/load_init', ordercard.load_init);
router.post('/order/order_card/edit', ordercard.edit);
router.post('/order/order_card/add', ordercard.add);
router.post('/order/order_card/load', ordercard.load);
router.post('/order/order_card/delete', ordercard.delete);
router.post('/order/order_card/confirm', ordercard.confirm);
router.post('/order/order_card/confirm7', ordercard.confirm7);
router.post('/order/order_card/confirm8', ordercard.confirm8);
router.post('/order/order_card/attachment', ordercard.attachment);

//Dashboard
router.post('/dashboard/load_dept_report', dashboard.load_dept_report);
router.post('/dashboard/load_year_order_report', dashboard.load_year_order_report);
module.exports = router;
