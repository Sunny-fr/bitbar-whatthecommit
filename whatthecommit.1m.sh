#!/usr/bin/env /usr/local/bin/node

var request = require('request');
var $ = require('cheerio');

request('http://whatthecommit.com', function (error, response, html) {
      if (!error && response.statusCode == 200) {
        var d = $("#content p", html).eq(0).text() ;
        console.log('😁 '+d);
      }
    });