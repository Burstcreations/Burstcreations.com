'use strict';

var path = require('path');
var express = require('express');
var ghost = require('ghost');
var chalk = require('chalk');
var app = express();
var port = process.env.PORT || 3000;
var env = process.env.NODE_ENV || 'development';

app.use('/', express.static('./static'));

ghost({
  config: path.join(__dirname, 'config.js')
}).then(function (ghostServer) {
  console.log(ghostServer.config);
  app.use(ghostServer.config.paths.subdir, ghostServer.rootApp);

  ghostServer.start(app);
  console.log(chalk.green('Running in ' + env + ' on localhost:' + port + '..'));
});
