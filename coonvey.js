// Dependencies
var express = require('express'),
bodyParser = require('body-parser'),
path = require('path'),
cons = require('consolidate'),
dust = require('dustjs-helpers'),
pg = require('pg'),
app = express();

//DB Connect String
var dbconnect = "postgres://coonvey:@1234567@localhost:5432/coonvey";

// Assign Dust Engine to .dust Files
app.engine('dust', cons.dust);

// Set default extension .dust
app.set('view engine', 'dust');
app.set('views', __dirname + '/views');

// Set Public Folder
app.use(express.static(path.join(__dirname, 'public')));

// Set Parser Middleware
// Make Express app use bodyparser middleware
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Routes
app.use('/', require('./routes/public'));
app.use('/api', require('./routes/api'));

// Start server
app.listen(5000);
console.log('API is running on port 5000');
