// Dependencies
var express = require('express');
var jwt = require('jsonwebtoken');
var formValidator = require('express-validator');
var tokenrouter = express.Router();
var pg = require('pg');

var authenticateController = require('../server/controllers/authenticate-controller.js');

// Param validator
tokenrouter.use(formValidator());
//tokenrouter.post('/', authenticateController.authenticateRegistration);
tokenrouter.post('/', function(req, res) {
  if(!req.body) return res.sendStatus(400);
  req.checkBody("Email", "Email address cannot be empty").notEmpty();
  req.checkBody("Email", "Enter a valid email address.").isEmail();
  req.checkBody("PhoneNumber", "PhoneNumber is required").notEmpty();
  req.checkBody("FirstName", "FirstName is required").notEmpty();
  req.checkBody("VerificationId", "VerificationID is required").notEmpty();
  var errors = req.validationErrors();
  if (errors) {
    res.status(500).send(errors);
    return;
  } else {
    // normal processing here
    if(!req.body.Email) res.status(400).send("Invalid Parameter");
    if(!req.body.PhoneNumber) res.status(400).send("Invalid Parameter");
    if(!req.body.PhoneVerificationId) res.status(400).send("Invalid Parameter");
    //assign request data to variables
    var _email = req.body.Email;
    var _phonenumber = req.body.PhoneNumber;
    var _verificationId = req.body.VerificationId;
    var _firstname = req.body.FirstName;
    var _lastname = req.body.LastName;
    var _middlename = req.body.MiddleName;
    var _fullname = req.body.FullName;
    var _gender = req.body.Gender;
    var _deviceuuid = req.body.DeviceUUID;
    var _deviceimei = req.body.DeviceIMEI;
    var _devicename = req.body.DeviceName;
    var _devicemodel = req.body.DeviceModel;
    var _userphoto = req.body.UserPhoto;
    var _userphotolink = req.body.UserPhotoLink;
    var _displayname = req.body.DisplayName;
    var _socialLoginUsername = req.body.SocialLoginUsername;
    var _socialLoginProvider = req.body.SocialLoginProvider;
    var _socialLoginToken = req.body.SocialLoginToken;
    var _socialMediaId = req.body.SocialMediaId;

    if(_email == 'ebuka@me.com' && _phonenumber == '08038785674')
    {
      var user = {
        username: _email,
        password: _phonenumber
      }
      console.log(req.body);
      var token = jwt.sign(user, process.env.SECRET_KEY, {
        expiresIn: 5000
      });
      res.json({
        success: true,
        user: _email,
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
