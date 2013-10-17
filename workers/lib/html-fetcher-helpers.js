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
  // fixme
  var htmlFiles = [];
  var dir = path.join(__dirname, "../../data/sites/");
  for( var i = 0; i < urls.length; i++ ){
    http.get(urls[i], dir+urls[i], download);
    htmlFiles[i] = fs.readFileSync(dir + urls[i], "utf8");
  }
  // setTimeout(function(){console.log("HTML FILES:",htmlFiles);},10000);
  return htmlFiles;
};

