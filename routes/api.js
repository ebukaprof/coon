// Dependencies
var express = require('express');
var bodyParser = require('body-parser');
var formValidator = require('express-validator');
var pg = require('pg');
var jwt = require('jsonwebtoken');
var router = express.Router();

// data
var dummyData = [];

// Controllers
var dataController = require('../server/controllers/data-controller.js');
var helperController = require('../server/controllers/helper-controller.js');

// Body parser Middleware
router.use(bodyParser.urlencoded({ extended: false }));
router.get('/users', function(req,res){
  var u = dataController.getUserByUsername("ebukaprof@gmail.com",function(cb){});
  console.log(u);

  
  res.end();

});
// Validation Middleware
router.use(function(req, res, next){
  var token = req.body.token || req.headers['token'];
  if(token){
    jwt.verify(token, process.env.SECRET_KEY, function(err, decode){
      if(err){
        res.status(500).send("Invalid Token");
      }
      else{
        next();
      }
    })
  }
  else {
    res.send("Please send a token");
  }
});
// Param validator
router.use(formValidator());

// Routes
router.post('/', function(req, res){
  res.send('api is working fully well');
  //res.render('index');
});

router.post('/countries', function(req,res){
  //dataController.getUserByUsername("ebukaprof@gmail.com",res);
  dataController.getCountries(req,res);
});

router.post('/newreg', function(req, res){
  var newreg = req.body.data;
  dummyData.push(newreg);
  res.json({data: dummyData});
});
router.post('/regdata', function(req, res){
  res.json({data: dummyData});
});


// Return router
module.exports = router;
