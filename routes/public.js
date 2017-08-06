// Dependencies
var express = require('express');
var router = express.Router();

// Routes
router.get('/', function(req, res){
  res.render('index');
});
router.get("/aboutus", function(req, res){
  res.render('aboutus');
});

// Return router
module.exports = router;
