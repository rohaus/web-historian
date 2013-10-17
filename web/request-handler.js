var path = require('path');
var fs = require('fs');
var mysql = require('mysql');

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
  for ( var j = 0; j < array.length; j++ ){
    if ( array[j] === target ){
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
  var msg;
  var archive = fs.readFileSync(datadir, "utf8").split("\n");
  for ( var i = 0; i < archive.length-1; i++ ){
    archive[i] = "/" + archive[i];
  }
  archive.pop();
  if ( req.url === "/" || contains(archive, req.url) ){
    if (req.method === "GET"){
      if ( req.url === "/" ){
        msg = "<input></input>";
      }else {
        msg = req.url;
      }
      sendResponse(res, msg);
    }else if (req.method === "POST"){
      var requestBody = "";
      req.on('data', function(chunk){
        requestBody += chunk;
      });
      req.on('end', function(){
        fs.appendFileSync(datadir, requestBody+"\n");
        connection.connect(function(err){
          console.log("Connection error:",err);
        });
        var sqlCommand = "INSERT into urls (url, createdAt) values('"+requestBody+"', CURDATE());";
        connection.query(sqlCommand, function(errs, rows, fields){
            console.log("SQL query error:",errs);
          });
        connection.end();
        sendResponse(res, requestBody, 302);
      });
    }
  }else {
    sendResponse(res, "URL does not exist.", 404);
  }
};
