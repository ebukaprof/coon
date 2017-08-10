////DB Connect String
var pg = require('pg');

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
