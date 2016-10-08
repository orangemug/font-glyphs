var fs      = require("fs");
var unicodeRanges = require('unicode-range-json')();
var Pbf = require("pbf")

var Glyphs = require("./node_modules/fontnik/test/format/glyphs");

var out = [];

var out = unicodeRanges.map(function(_range) {
  var range = {};
  range.category = _range.category;

  var min = _range.range[0];
  var max = _range.range[1];
  var hasMatched = false;

  var total = max - min;
  var num = 0;

  var start, end, glyphs;

  for(var i=min; i<Math.min(max, 65536); i++) {
    var _rIdx = Math.floor(i/256)
    var currStart = _rIdx*256;
    var currEnd   = ((_rIdx+1)*256)-1;

    if(currStart !== start) {
      start = currStart;
      end   = currEnd;

      var vt = new Glyphs(new Pbf(new Uint8Array(
        fs.readFileSync(
          // __dirname+"/glyphs/Roboto/"+start+"-"+end+".pbf"
          __dirname+"/fonts/klokantech-gl-fonts/KlokanTech Noto Sans CJK Regular/"+start+"-"+end+".pbf"
        )
      )));

      glyphs = vt.stacks['KlokanTech Noto Sans CJK Regular'].glyphs
    }


    if(glyphs.hasOwnProperty(i)) {
      hasMatched = true;
      num++;
    }
  }

  range.coverage = {num: num, total: total};
  return range;
})

console.log(
  JSON.stringify(out, null, 2)
);
