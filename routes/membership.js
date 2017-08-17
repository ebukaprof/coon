// Dependencies
var express = require('express');
var passport = require('passport');
var localStrategy = require('passport-local').Strategy;
var router = express.Router();

var User = require('../server/models/user');

// Routes
router.get('/login', function(req, res){
  res.render('membership/login');
});

passport.use(new localStrategy(
  function(username, password, done){
    User.getUserByUsername(username, function(err, user){
      if(err) throw err;
      if(!user){
        return done(null, false, {message: 'Unknown User'});
      }

      User.comparePassword(password, user.password, function(err, isMatch){
        if(err) throw err;
        if(isMatch){
          return done(null, user);
        } else {
          return done(null, false, {message: 'Invalid Password'});
        }
      });
    });
  }
));
router.post('/login', passport.authenticate('local', {successRedirect:'/', failureRedirect:'/membership/login', failureFlash:true}),
function(req, res)
{
  //if called, authenticate was successful
  res.redirect('/');
  //res.redirect('/membership' + req.user.username);

});
router.get("/register", function(req, res){
  res.render('membership/register');
});
router.get("/forgotpassword", function(req, res){
  res.render('membership/forgotpassword');
});

// Return router
module.exports = router;
