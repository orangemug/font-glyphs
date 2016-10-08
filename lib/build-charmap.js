var fs   = require("fs");
var ft   = require("freetype2");
var glob = require("glob")

var unicodeRanges = require('unicode-range-json')();


var files = [].concat(
  glob.sync(__dirname+"/../fonts/noto-repo/hinted/**/*.ttf"),
  glob.sync(__dirname+"/../fonts/noto-emoji/fonts/*.ttf"),
  glob.sync(__dirname+"/../fonts/noto-cjk/*.otf"),
  glob.sync(__dirname+"/../fonts/google/**/*.ttf")
)

var out = files.map(function(filepath, idx) {
  var buffer = fs.readFileSync(filepath);
  var rslt = check(buffer);
  console.log("%s [%s/%s]", rslt.family_name, idx+1, files.length)
  return rslt;
})

fs.writeFileSync(
  __dirname+"/../reports/font-report.json", 
  JSON.stringify(out, null, 2),
  {flags: "w"}
)

function check(buffer) {
  if (!!err) throw err;
  var face = {};
  var err = ft.New_Memory_Face(buffer, 0, face);
  if (!err) {
    face = face.face;
    // console.log(face.glyph);
  }

  var unicodeRanges = require('unicode-range-json')();

  var ranges = []

  unicodeRanges.forEach(function(_range) {
    var range = {};
    ranges.push(range);
    range.category = _range.category;

    var min = _range.range[0];
    var max = _range.range[1];
    var hasMatched = false;

    var total = max - min;
    var num = 0;

    for(var i=min; i<max; i++) {
      var err = ft.Get_Char_Index(face, i)
      if(err > 0) {
        hasMatched = true;
        num++;
      }

      range.coverage = {num: num, total: total};
    }
  })

  return {
    family_name: face.family_name, 
    style_name:  face.style_name,
    ranges: ranges
  };
}

