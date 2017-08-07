var jwt = require('jsonwebtoken');

module.exports.authenticate = function(req, res){
  if(!req.body) return res.sendStatus(400);
  if(!req.body.username) res.status(400).send("Invalid Parameter");
  if(!req.body.password) res.status(400).send("Invalid Parameter");
  //assign request data to variables
  var username = req.body.username;
  var passw = req.body.password;
  if(username == 'ebuka' && passw == '1234567')
  {
    var user = {
      username: username,
      password: passw
    }
    console.log(req.body);
    var token = jwt.sign(user, process.env.SECRET_KEY, {
      expiresIn: 4000
    });
    res.json({
      success: true,
      user: username,
      token: token
    });
  }
  else{
    res.status(400).send("Invalid user credential");
  }
}
