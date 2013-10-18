var fetcher = require('/lib/html-fetcher-helpers');
var path = require('path');

var filePath = path.join(__dirname, "../data/sites.txt");
fetcher.readUrls(filePath, fetcher.downloadUrls);