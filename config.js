'use strict';

var path = require('path');
var port = process.env.PORT || 3000;
var env = process.env.NODE_ENV || 'development';

module.exports = {
  production: {
    url: 'http://burstcreations.com/blog',
    server: {
      host: '127.0.0.1',
      port: port
    },
    database: {
      client: 'sqlite3',
      connection: {
        filename: path.join(__dirname, '/content/data/ghost.db')
      },
      debug: false
    },
    paths: {
      subdir: '/blog'
    }
  }
};
