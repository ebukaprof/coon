var validator = require('validator');
var mailerservice = require('../services/app-mailer.js');

module.exports = {
  generateUUID: function()
  {
    var uuid = require('node-uuid');
    return uuid.v1(); //uuid.v1({node:[0x01,0x23,0x45,0x67,0x89,0xab]});
  },
  passwordHash: function(passString){
    var passwordHasher = require('aspnet-identity-pw');
    // e.g : helperController.passwordHash('@1234567');
    return passwordHasher.hashPassword(passString);
  },
  isPasswordValid: function(userpassw, db_hashedPassw){
    var passwordHasher = require('aspnet-identity-pw');
    //e.g: helperController.isPasswordValid('Qwerty@1','ABxD/loL3ObN4J0emcH3lwsLbNzjzUaH9rnl4RbHr1LljwQlm/mPNFgmxQNHxQaXsA==')
    var isValid = passwordHasher.validatePassword(userpassw, db_hashedPassw);
    return isValid;
  },
  isEmailValid: function(emailString)
  {
    return validator.isEmail(emailString);
  },
  sendMail: function(to_email, subject, message){
    coonvey.mailer.send(to_email, {
      //
      template: 'email',
      to: to_email,
      subject: subject,
      otherProperty: 'Other Property'
    }, function(err) {
      if(err){
        console.log(err);
        //error occured
        return;
      }
      return 'Email Sent';
    });
  },
  getTimeOfDay: function()
  {
    var str = "";

    var currentTime = new Date()
    var hours = currentTime.getHours()
    var minutes = currentTime.getMinutes()
    var seconds = currentTime.getSeconds()

    if (minutes < 10) {
        minutes = "0" + minutes
    }
    if (seconds < 10) {
        seconds = "0" + seconds
    }
    str += hours + ":" + minutes + ":" + seconds + " ";
    if(hours > 11){
        str += "PM"
    } else {
        str += "AM"
    }
    return str;
  },
  getTimeStamp: function()
  {
    var now = new Date();
    return ((now.getMonth() + 1) + '/' +
            (now.getDate()) + '/' +
             now.getFullYear() + " " +
             now.getHours() + ':' +
             ((now.getMinutes() < 10)
                 ? ("0" + now.getMinutes())
                 : (now.getMinutes())) + ':' +
             ((now.getSeconds() < 10)
                 ? ("0" + now.getSeconds())
                 : (now.getSeconds())));
  },
  getISOTimeStamp: function()
  {
    return new Date().toISOString();
  }
};
