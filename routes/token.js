// Dependencies
var express = require('express');
var jwt = require('jsonwebtoken');
var formValidator = require('express-validator');
var tokenrouter = express.Router();
var pg = require('pg');

var authenticateController = require('../server/controllers/authenticate-controller.js');
process.env.SECRET_KEY = "coonveykeysign";

// Param validator
tokenrouter.use(formValidator());
//tokenrouter.post('/', authenticateController.authenticateRegistration);
tokenrouter.post('/', function(req, res) {
  if(!req.body) return res.sendStatus(400);
  req.checkBody("email", "Email address cannot be empty").notEmpty();
  req.checkBody("email", "Enter a valid email address.").isEmail();
  var errors = req.validationErrors();
  if (errors) {
    res.status(500).send(errors);
    return;
  } else {
    // normal processing here
    if(!req.body.email) res.status(400).send("Invalid Parameter");
    if(!req.body.password) res.status(400).send("Invalid Parameter");
    //assign request data to variables
    var username = req.body.email;
    var passw = req.body.password;
    if(username == 'ebuka@me.com' && passw == '1234567')
    {
      var user = {
        username: username,
        password: passw
      }
      console.log(req.body);
      var token = jwt.sign(user, process.env.SECRET_KEY, {
        expiresIn: 5000
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

});

// Return router
module.exports = tokenrouter;
