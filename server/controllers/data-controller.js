// Dependencies
//var User = require('../models/user.js');
//var express = require('express');
//var pg = require('pg');
//var pg = require('pg');


module.exports = {
  getRecords: function(req, res) {
        var pg = require('pg');
        // set the db config Files
        var config = require('../config/config.js');
        config.setConfig();

        // Initialize db connection pool
        var pgpool = new pg.Pool(process.env.PG_CONFIG);

        pgpool.connect(function(err, client, done){
          if(err){
            return console.error('error fetching client db', err);
          }
          client.query('', function(err, result){
            //call done to release the client back to the pool
            done();
            if(err){
              return console.error('error running query', err);
            }
            console.log(result.rows[0].number);
          });
        });

        pgpool.on('error', function(err, client){
          //if an error is encountered by the client while it sits idle in the pool
          console.error('idle client error', err.message, err.stack);
        });

        //var conString = process.env.DATABASE_URL || "postgres://postgres:Welcome123@localhost:5432/postgres";
        /***var client = new pg.Client(config);
        client.connect(function(err){
          if(err){
            //throw err;
            console.log(err);
            process.exit(1);
          }
          var query = client.query("select * from employee");
          query.on("row", function (row, result) {
              result.addRow(row);
          });
          query.on("end", function (result) {
              client.end();
              res.writeHead(200, {'Content-Type': 'text/plain'});
              res.write(JSON.stringify(result.rows, null, "    ") + "\n");
              res.end();
          });
        });**/

  },
    addRecord : function(req, res){
        var pg = require('pg');
        // set the db config Files
        var config = require('../config/config.js');
        config.setConfig();
        var client = new pg.Client(config);
        client.connect();
        var query = client.query("insert into employee (firstName,lastName,email,mobile) "+
                                "values ('"+req.query.fName+"','"+req.query.lName+"','"+
                                    req.query.email+"','"+req.query.mbl+"')");
        query.on("end", function (result) {
            client.end();
            res.write('Success');
            res.end();
        });
    },
     delRecord : function(req, res){
        var pg = require('pg');
        // set the db config Files
        var config = require('../config/config.js');
        config.setConfig();
        var client = new pg.Client(config);
        client.connect();
        var query = client.query( "Delete from employee Where id ="+req.query.id);
        query.on("end", function (result) {
            client.end();
            res.write('Success');
            res.end();
        });
    },
    createTable : function(req, res){
        var pg = require('pg');
        // set the db config Files
        var config = require('../config/config.js');
        config.setConfig();
        var client = new pg.Client(config);
        client.connect();
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
        var pg = require('pg');
        // set the db config Files
        var config = require('../config/config.js');
        config.setConfig();
        var client = new pg.Client(config);
        client.connect();
        var query = client.query( "Drop TABLE employee");
        query.on("end", function (result) {
            client.end();
            res.write('Table Schema Deleted');
            res.end();
        });
    }
};
