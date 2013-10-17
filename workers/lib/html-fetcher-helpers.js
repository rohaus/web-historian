var fs = require('fs');
var path = require('path');

exports.readUrls = function(filePath, cb){
  var contents = fs.readFileSync(filePath, "utf8").split("\n");
  return cb(contents);
};

exports.downloadUrls = function(urls){
  // fixme
  htmlFiles = [];
  var dir = path.join(__dirname, "../../data/sites/");
  for( var i = 0; i < urls.length; i++ ){
    htmlFiles[i] = fs.readFileSync(dir + urls[i], "utf8");
  }
  return htmlFiles;
};
