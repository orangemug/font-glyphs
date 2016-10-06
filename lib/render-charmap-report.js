var fs = require("fs");
var Handlebars = require("handlebars");
var unicodeRanges = require('unicode-range-json')();

var templates = {
  charTable: Handlebars.compile(
    fs.readFileSync(__dirname+"/../templates/char-table.hbs").toString()
  )
};

var html = templates.charTable({
  unicodeRanges: unicodeRanges,
  fonts: require("../reports/font-report.json").map(function(font) {
    return Object.assign(font, {
      ranges: font.ranges.map(function(range) {
        var state;
        if(range.coverage.num === range.coverage.total) {
          state = "full";
        }
        else if(range.coverage.num > 0) {
          state = "partial";
        }
        else {
          state = "none";
        }
        return Object.assign(range, {
          state: state
        })
      })
    })
  })
})

fs.writeFileSync(__dirname+"/../reports/char-table.html", html, {flags: "w"});
