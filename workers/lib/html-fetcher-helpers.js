var fs = require('fs');
var path = require('path');
var http = require('http-get');

exports.readUrls = function(filePath, cb){
  var contents = fs.readFileSync(filePath, "utf8").split("\n");
  return cb(contents);
};

var download = function (error, result) {
  if (error) {
    console.error(error);
  } else {
    console.log('File downloaded at: ' + result.file);
  }
};

exports.downloadUrls = function(urls){
  var dir = path.join(__dirname, "../../data/sites/");
  for( var i = 0; i < urls.length; i++ ){
    http.get(urls[i], dir+urls[i], download);
  }
  return true;
};

