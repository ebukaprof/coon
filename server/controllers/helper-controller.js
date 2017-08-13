var passwordHasher = require('aspnet-identity-pw');
var validator = require('validator');
var mailerservice = require('../services/app-mailer.js');

module.exports = {
  passwordHash: function(passString){
    // e.g : helperController.passwordHash('@1234567');
    return passwordHasher.hashPassword(passString);
  },
  isPasswordValid: function(userpassw, db_hashedPassw){
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
  }
};
