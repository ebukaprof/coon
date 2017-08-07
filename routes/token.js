// Dependencies
var express = require('express');
var tokenrouter = express.Router();
var pg = require('pg');

var authenticateController = require('../server/controllers/authenticate-controller.js');
process.env.SECRET_KEY = "coonveykeysign";

tokenrouter.post('/', authenticateController.authenticate);

// Return router
module.exports = tokenrouter;
