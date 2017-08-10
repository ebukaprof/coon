// Dependencies
//var User = require('../models/user.js');
//var express = require('express');
//var pg = require('pg');
//var pg = require('pg');

var db = require('../config/config.js');
var pg = require('pg');


module.exports = {
  buildSelectQuery: function(tableName)
  {
    return ['SELECT * FROM', tableName].join(' ');
  },
  runQuery: function(queryString, callback)
  {
    var pgpool = db.DBCONNECT;
    pgpool.connect(function(err,client, done){
      if(err){console.log(err); done(); callback(); return;}
      client.query(queryString, function(err, result){
        if(err) {console.error(err+'\nQuery: ' + queryString); done(); callback; return;}
        done();
        callback(result.rows);
      });
    });
    pgpool.on('error', function(err, client){
      //if an error is encountered by the client while it sits idle in the pool
      console.error('idle client error', err.message, err.stack);
    });
  },
  addRecord : function(req, res){
    var pgpool = db.DBCONNECT;
    pgpool.connect(function(err,client, done){
      if(err){console.log(err); done(); callback(); return;}
      client.query("insert into employee (firstName,lastName,email,mobile) "+
                              "values ('"+req.query.fName+"','"+req.query.lName+"','"+
                                  req.query.email+"','"+req.query.mbl+"')", function(err, result){
        if(err) {console.error(err+'\nQuery: ' + queryString); done(); callback; return;}
        done();
        callback(result.rows);
      });
      query.on("end", function (result) {
          client.end();
          res.write('Success');
          res.end();
      });
    });
  },
  getRecords: function(req, res) {
        var pgpool = db.DBCONNECT;

        pgpool.connect(function(err, client, done){
          if(err){
            console.log(err);
            return console.error('error fetching client db', err);
            process.exit(1);
          }
          //var query = client.query('select * from "Countries"');
          client.query('select * from "Countries"', function(err, result){
            //call done to release the client back to the pool
            done();
            if(err){
              return console.error('error running query', err);
              process.exit(1);
            }
            var jsonR = new Object();
            jsonR.status = "success";
            jsonR.data = result.rows;
            console.log(jsonR);
            console.log(result.rows[0].number);
            res.write(JSON.stringify(result.rows, null, "    ") + "\n");
            res.end();
            //res.json(jsonR);
          });

        });

        pgpool.on('error', function(err, client){
          //if an error is encountered by the client while it sits idle in the pool
          console.error('idle client error', err.message, err.stack);
        });
  },
  createTable : function(req, res){
      var pgpool = db.DBCONNECT;
      pgpool.connect();
      var query = client.query( "CREATE TABLE employee"+
                                  "("+
                                    "firstname character varying(50),"+
                                    "lastname character varying(20),"+
                                    "email character varying(30),"+
                                    "mobile character varying(12),"+
                                    "id serial NOT NULL"+
                                  ")");
      query.on("end", function (result) {
          client.end();
          res.write('Table Schema Created');
          res.end();
      });
  },
  dropTable : function(req, res){
      var pgpool = db.DBCONNECT;
      pgpool.connect();
      var query = client.query( "Drop TABLE employee");
      query.on("end", function (result) {
          client.end();
          res.write('Table Schema Deleted');
          res.end();
      });
  },
   delRecord : function(req, res){
      var pgpool = db.DBCONNECT;
      pgpool.connect();
      var query = client.query( "Delete from employee Where id ="+req.query.id);
      query.on("end", function (result) {
          client.end();
          res.write('Success');
          res.end();
      });
  },
  getCountries: function(req, res) {
    this.runQuery('SELECT * FROM "Countries"', function(result) {
      // Whatever you need to do with 'result'
      //res = result;
      var jsonData = new Object();
      jsonData.status = "success";
      jsonData.data = result;
      //res.writeHead(200, {'Content-Type': 'text/plain'});
      res.write(JSON.stringify(jsonData, null, "    ") + "\n");
      res.end();
    });

        //var pg = require('pg');
        /***var pgpool = db.DBCONNECT;
        pgpool.connect(function(err, client, done){
          if(err){
            console.log(err);
            done();
            return console.error('error fetching client db', err);
            process.exit(1);
          }
          //var query = client.query('select * from "Countries"');
          client.query('SELECT * FROM "Countries"', function(err, result){
            //call done to release the client back to the pool
            done();
            if(err){
              done();
              return console.error('error running query', err);
              process.exit(1);
            }
            var jsonR = new Object();
            jsonR.status = "success";
            jsonR.data = result.rows;
            console.log(jsonR);
            console.log(result.rows[0].number);
            res.write(JSON.stringify(result.rows, null, "    ") + "\n");
            res.end();
            //res.json(jsonR);
          });

        });

        pgpool.on('error', function(err, client){
          //if an error is encountered by the client while it sits idle in the pool
          console.error('idle client error', err.message, err.stack);
        });***/



  }
};
