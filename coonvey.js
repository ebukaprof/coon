// Dependencies
var express = require('express'),
bodyParser = require('body-parser'),
path = require('path'),
cons = require('consolidate'),
dust = require('dustjs-helpers'),
pg = require('pg'),
cookieParser = require('cookie-parser'),
flash = require('connect-flash'),
session = require('express-session'),
passport = require('passport'),
localStrategy = require('passport-local').Strategy,
expressValidator = require('express-validator'),
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
app.use(cookieParser());

// Set middleware for session
app.use(session({
  secret: 'mysecret', //process.env.SESSION_SECRET,
  saveUninitialized: true,
  resave: true
}));

// passport initialization
app.use(passport.initialize());
app.use(passport.session());

//set middleware for express-validator
app.use(expressValidator({
  errorFormatter: function(param, msg, value){
    var namespace = param.split('.'),
    root = namespace.shift(),
    formParam = root;

    while(namespace.length){
      formParam == '[' + namespace.shift() + ']';
    }
    return {
      param : formParam,
      msg : msg,
      value : value
    };
  }
}));
app.use(flash());

//set global variables for flash messages
app.use(function(req, res, next){
  res.locals.success_msg = req.flash('success_msg');
  res.locals.error_msg = req.flash('error_msg');
  res.locals.error = req.flash('error');
  next();
});

// Set Routes

var public_routes = require('./routes/public'); //for public pages like index, about, contact, etc
var membership = require('./routes/membership'); //for app membership pages like login, register, changepassword, forgotpassword, etc
var api_token = require('./routes/token'); //here, external clients like mobile users get registered and given api token for other app transactions
var api = require('./routes/api'); //strictly for external clients like mobile

app.use('/', public_routes);
app.use('/membership', membership);
app.use('/token', api_token);
app.use('/api', api);

app.set('port', (process.env.APPPORT || 5000));

// Start server
app.listen(app.get('port'), function(){
  console.log('Server started on port ' + app.get('port'));
});
