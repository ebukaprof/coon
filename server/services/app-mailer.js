var express = require('express')(),
mailer = require('express-mailer');

mailer.extend(express, {
  from: 'no-reply@example.com',
  host: 'smtp.gmail.com', // hostname
  secureConnection: true, // use SSL
  port: 465, // port for secure SMTP
  transportMethod: 'SMTP', // default is SMTP. Accepts anything that nodemailer accepts
  auth: {
    user: process.env.MAIL_USERNAME, //'gmail.user@gmail.com',
    pass: process.env.MAIL_PASSWORD //'userpass'
  }
});
