// Dependencies
var express = require('express'),
bodyParser = require('body-parser'),
path = require('path'),
cons = require('consolidate'),
dust = require('dustjs-helpers'),
pg = require('pg'),
app = express();



// Assign Dust Engine to .dust Files
app.engine('dust', cons.dust);

// Set default extension .dust
app.set('view engine', 'dust');
app.set('views', __dirname + '/views');

// Set Public Folder
app.use(express.static(path.join(__dirname, 'public')));

// Set Parser Middleware
// Make Express app use bodyparser middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

/**var config = require('./server/config/config.js');
config.setConfig();
const client = new pg.Client(process.env.PG_CONFIG);
client.connect((err)=> {
  console.log("DB error stack" + err.stack);
  console.log("DB error" + err);
})**/



// Routes
app.use('/', require('./routes/public'));
app.use('/token', require('./routes/token'));
app.use('/api', require('./routes/api'));

// Start server
app.listen(5000);
console.log('API is running on port 5000');
