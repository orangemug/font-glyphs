var fs      = require("fs");
var fontnik = require("fontnik");

fontnik.load(
  fs.readFileSync(__dirname+"/fonts/google/ofl/vollkorn/Vollkorn-Bold.ttf"),
  function(err, data) {
    return;
    console.log(err, data);
    console.log(data[0].points.map(function(point) {
      return String.fromCodePoint(point)
    }))
  }
)


var ProtoBuf   = require('protobufjs')
var TextFormat = require("protobuf-textformat");
var Pbf = require("pbf")

var Glyphs = require("./node_modules/fontnik/test/format/glyphs");

var out = [];

for (var i = 0; i < 65536; (i = i + 256)) {
  var start = i;
  var end = Math.min(i + 255, 65535);

  var vt = new Glyphs(new Pbf(new Uint8Array(
    fs.readFileSync(
      __dirname+"/glyphs/Noto Sans/"+start+"-"+end+".pbf"
    )
  )));

  var obj = vt.stacks['Noto Sans Regular'].glyphs

  for(var k = start; k < end; k++) {
    if(obj.hasOwnProperty(k)) {
      out.push({
        key: String.fromCodePoint(k),
        avail: !!obj[k].bitmap
      });
    }
    else {
      out.push({
        key: String.fromCodePoint(k),
        avail: false
      });
    }
  }

}

out = out
  .filter(function(obj) {
    return !obj.avail 
  })

out.forEach(function(obj) {
  console.log('"%s" %s"', obj.key, (obj.avail ? "available" : "missing"))
})


