var http = require("http");
var myStuff = require("./request-handler");
var fetcher = require("../workers/lib/html-fetcher-helpers.js");
var path = require('path');

var port = 8080;
var ip = "127.0.0.1";
var server = http.createServer(myStuff.handleRequest);
console.log("Listening on http://" + ip + ":" + port);
server.listen(port, ip);

var fetch = function(){
  var filePath = path.join(__dirname, "../data/sites.txt");
  fetcher.readUrls(filePath, fetcher.downloadUrls);
};

setInterval(fetch, 5000);