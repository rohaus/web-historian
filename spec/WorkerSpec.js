var stubs = require("./helpers/stubs");
var htmlFetcherHelpers = require("../workers/lib/html-fetcher-helpers");
var fs = require("fs");
var path = require('path');

describe("html fetcher helpers", function(){

  it("should have a 'readUrls' function", function(){
    var urlArray = ["example1.com", "example2.com"];

    var filePath = path.join(__dirname, "/testdata/sites.txt");

    fs.writeFileSync(filePath, urlArray.join("\n"));

    var resultArray;

    runs(function(){
      htmlFetcherHelpers.readUrls(filePath, function(urls){
        resultArray = urls;
      });
    });

    waits(200);

    runs(function() {
      expect(resultArray).toEqual(urlArray);
    });
  });

  it("should have a 'downloadUrls' function", function(){
    var urlArray = ["www.google.com"];
    var result = htmlFetcherHelpers.downloadUrls(urlArray);
    expect(result).toBeTruthy();
  });
});
