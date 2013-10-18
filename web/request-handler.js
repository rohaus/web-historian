var path = require('path');
var fs = require('fs');
var mysql = require('mysql');
var url = require('url');
var redirect = require('response-redirect');
var http = require('http');

http.ServerResponse.prototype.redirect = redirect;

var datadir = module.exports.datadir = path.join(__dirname, "../data/sites.txt"); // tests will need to override this.

var connection = mysql.createConnection({
  host: "127.0.0.1",
  port: 3306,
  database: "web_historian",
  user: "root"
});

var headers = {
  "access-control-allow-origin": "*",
  "access-control-allow-methods": "GET, POST, PUT, DELETE, OPTIONS",
  "access-control-allow-headers": "content-type, accept",
  "access-control-max-age": 10,
  "Content-Type": "text/html"
};

var contains = function(array, target){
  for( var j = 0; j < array.length; j++ ){
    if( array[j] === target ){
      return true;
    }
  }
  return false;
};

var sendResponse = module.exports.sendResponse = function(response, message, status){
  status = status || 200;
  response.writeHead(status, headers);
  response.end(message);
};

module.exports.handleRequest = function (req, res) {
  var responseBody, pathname;
  var parsedURL = url.parse(req.url);
  var archive = fs.readFileSync(datadir, "utf8").split("\n");
  for( var i = 0; i < archive.length-1; i++ ){
    archive[i] = "/" + archive[i];
  }
  archive.pop();
  if( req.url === "/" || contains(archive, parsedURL.pathname) ){
    if( req.method === "GET" ){
      if( req.url === "/" ){
        pathname = path.join(__dirname, "/public/index.html");
      }else{
        pathname = path.join(__dirname, "../data/sites", parsedURL.pathname);
      }
      responseBody = fs.readFileSync(pathname, "utf8");
      sendResponse(res, responseBody);
    }else if( req.method === "POST" ){
      var requestBody = "";
      req.on('data', function(chunk){
        requestBody += chunk;
      });
      req.on('end', function(){
        requestBody = requestBody.split("=")[1];
        connection.connect(function(err){
          console.log("Connection error:",err);
        });
        var sqlCommand = "INSERT into urls (url, createdAt) values('"+requestBody+"', CURDATE());";
        connection.query(sqlCommand, function(errs, rows, fields){
          console.log("SQL query error:",errs);
        });
        connection.end();
        if( !contains(archive, "/"+requestBody) ){
          fs.appendFileSync(datadir, requestBody+"\n");
          pathname = path.join(__dirname, "/public/redirect.html");
          responseBody = fs.readFileSync(pathname, "utf8");
          sendResponse(res, responseBody);
        }else{
          res.redirect(302, requestBody);
        }
      });
    }
  }else{
    sendResponse(res, "URL does not exist.", 404);
  }
};
