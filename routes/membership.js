// Dependencies
var express = require('express');
var passport = require('passport');
var localStrategy = require('passport-local').Strategy;
var router = express.Router();

// Routes
router.post('/login', function(req, res){
  res.render('membership/login');
});
router.post("/register", function(req, res){
  res.render('membership/register');
});
router.get("/forgotpassword", function(req, res){
  res.render('membership/forgotpassword');
});

// Return router
module.exports = router;
