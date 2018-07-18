var bcrypt = require('bcrypt-nodejs');
var uuidV4 = require('uuid/v4');

var db     = require('./db');
// Set up User class
var User = function(user) {
  var that = new Object();
  that.UserIdx = user.UserIdx,
  that.id       = user.UserId;
  that.email    = user.Email;
  that.password = user.Passwd;
  that.name = user.UserName;
  that.depart = user.DeptIdx;
  that.position = user.posname;
  that.point = user.PointYR;
  console.log(that);
  return that;
};

// Gets a random id for this user
var generateUserId = function() {
  return uuidV4();
};

// Hash and salt the password with bcrypt
var hashPassword = function(password) {
  return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
};

// Check if password is correct
var validPassword = function(password, savedPassword) {
  return bcrypt.compareSync(password, savedPassword);
};

var login = function(email, password, callback) {
  // Check that the user logging in exists
  db.query('SELECT users.*, codes.SubCode1 as posname FROM users LEFT JOIN codes on users.Position = codes.Priority and codes.Classification = "App Position" WHERE users.Email = ? ', [email], function(err, rows) {
    if (err){
      return callback(err);
    }      

    if (!rows.length)
      return callback(null, false);

    // if (!validPassword(password, rows[0].Passwd)){
      if(password == rows[0].Passwd){
        return callback(null, true, new User(rows[0]));
      } else {
        return callback(null, false, new User(rows[0]));
      }
    // }      

    // User successfully logged in, return user
    // return callback(null, true, new User(rows[0]));
  });
};

var createUser = function(body, callback) {
  var id = generateUserId();
  var newUser = {
    id: id,
    email: body.email,
    password: hashPassword(body.password),
    name: body.username
  };

  db.query(`INSERT INTO users ( CostcenterIdx, UserName, UserId, Passwd, Email, IsUse ) values (?,?,?,?,?,?)`,
    [1, body.username, id, hashPassword(body.password), body.email, 1],
    function(err) {
      if (err) {
        if (err.code === 'ER_DUP_ENTRY') {
          // If we somehow generated a duplicate user id, try again
          return createUser(body, callback);
        }
        return callback(err);
      }

      // Successfully created user
      return callback(null, true, new User(newUser));
    }
  )
}

var register = function(body, callback) {
  db.query('SELECT * FROM users WHERE Email = ?', [body.email], function(err, rows) {
    if(err) {
      callback(err);
    }
    if(rows.length)
      return callback(null, false);
    return createUser(body, callback);
  })
}

var findOne = function(body, callback) {
  db.query('SELECT * FROM users WHERE Email = ?', [body.email], function(err, rows) {
    if (err)
      return callback(err);
    else 
      return callback(null, new User(rows[0]));    
  });  
}
var find_all = function(callback) {
  db.query('SELECT * FROM users', [], function(err, rows) {
    callback(err, rows);
  });
}

exports.login = login;
exports.register = register;
exports.findOne = findOne;
exports.find_all = find_all;