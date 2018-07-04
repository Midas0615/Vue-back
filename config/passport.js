var JwtStrategy = require('passport-jwt').Strategy,
    ExtractJwt = require('passport-jwt').ExtractJwt;

// load up the user model
var User = require('../models/user');
var config = require('../config/const').config; // get db config file

module.exports = function(passport) {
  var opts = {};
  opts.jwtFromRequest = ExtractJwt.fromAuthHeaderWithScheme("jwt");
  opts.secretOrKey = config.secret;
  passport.use(new JwtStrategy(opts, function(jwt_payload, done) {
    User.login(jwt_payload.email, jwt_payload.password, function(err, status, user) {
      if(err) {
        return done(err, false);
      } else if(status) {
        done(null, user);
      } else {
        done(null, false);
      }
    })    
  }));
};
