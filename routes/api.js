// Dependencies
var express = require('express');
var router = express.Router();
var pg = require('pg');
var jwt = require('jsonwebtoken');

// data
var dummyData = [];

// Controllers
var dataController = require('../server/controllers/data-controller.js');

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

// Routes
router.post('/', function(req, res){
  res.send('api is working fully well');
  //res.render('index');
});

router.post('/countries', function(req,res){
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
