////DB Connect String
//var dbconnect = "postgres://coonvey:@1234567@localhost:5432/coonvey";
module.exports.setConfig = function(){
  process.env.PG_CONFIG = {
    user: 'coonvey', //pg user
    password: '@1234567', //pg user password
    database: 'coonvey', //pg database
    host: 'localhost', //server hosting the pg database
    port: '5432', //pg port
    max: 10, //maximum number of clients in the pool
    idleTimeoutMillis: 30000, //how long is allowed to remain idle before being closed
  };
  //process.env.PG_CONNECT = "postgres://coonvey:@1234567@localhost:5432/coonvey"
}
