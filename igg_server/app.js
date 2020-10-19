var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const cors = require("cors");
const md5 = require('md5')


var indexRouter = require('./routes/index');
var loginRouter = require('./routes/login');
var registerRouter = require('./routes/register');
var latestproductRouter = require('./routes/latestproduct');
var hotproductRouter = require('./routes/hotproduct');
var detailsRouter = require('./routes/details');

var app = express();

app.use(cors({
  origin: [ //允许跨域的客户端源头有哪些
    'http://localhost:8080', //vue脚手架
    "http://127.0.0.1:5500", //live server
    "http://xzvue.applinzi.com" //新浪云上的vue项目
  ],
  credentials: true //要求允许携带cookie
}))

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/login', loginRouter);
app.use('/register', registerRouter);
app.use('/latestproduct', latestproductRouter);
app.use('/hotproduct', hotproductRouter);
app.use('/details', detailsRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
