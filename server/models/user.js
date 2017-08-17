var db = require('../controllers/data-controller');
var helper = require('../controllers/helper-controller');
//var User = module.exports;
module.exports.createUser = function(newUser, callback){
  //
}

module.exports.getUserByUsername = function(username, callback){
  //create query to search db with username
}
module.exports.comparePassword = function(userpassword, hash, callback)
{
  //
  var isMatch = helper.isPasswordValid(userpassword,hash);
}
