// Dependencies
var express = require('express');
var router = express.Router();

// data
var dummyData = [];

// Routes
router.get('/', function(req, res){
  //res.render('index');
  res.send('api is working fully well');
});
router.post('/newreg', function(req, res){
  var newreg = req.body.data;
  dummyData.push(newreg);
  res.json({data: dummyData});
})
router.get('/regdata', function(req, res){
  res.json({data: dummyData});
});


// Return router
module.exports = router;
