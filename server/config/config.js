////DB Connect String
//ngrok http 5000
//https://scotch.io/tutorials/easy-node-authentication-setup-and-local
//https://code.tutsplus.com/tutorials/authenticating-nodejs-applications-with-passport--cms-21619

var pg = require('pg');
process.env.SECRET_KEY = "coonveykeysign";
process.env.MAIL_USERNAME = "";
process.env.MAIL_PASSWORD = "";
process.env.APPPORT = 5000;
process.env.SESSION_SECRET = "coonveysecret";

var config = {
  user: 'coonvey', //pg user
  password: '1234567', //pg user password
  database: 'coonvey', //pg database
  host: 'localhost', //server hosting the pg database
  port: '5432', //pg port
  max: 10, //maximum number of clients in the pool
  idleTimeoutMillis: 30000, //how long is allowed to remain idle before being closed
};

var pool = new pg.Pool(config);

pool.on('error',function(err, client){
  console.error('idle client error', err.message, err.stack);
})

module.exports.DBCONNECT = pool;
