// eventually, you'll have some code here that uses the tested helpers
// to actually download the urls you want to download.
var fetcher = require('/lib/html-fetcher-helpers');
var path = require('path');

var filePath = path.join(__dirname, "../data/sites.txt");
fetcher.readUrls( filePath , downloadUrls);