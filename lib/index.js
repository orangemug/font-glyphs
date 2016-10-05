var fontnik    = require("./fontnik-promise");
var fs         = require('fs');
var fsp        = require('fs-promise');
var glob       = require("glob-promise");
var os         = require('os');
var path       = require("path");
var Promise    = require("bluebird");
var ProtoBuf   = require('protobufjs')
var TextFormat = require("protobuf-textformat");


var builder = ProtoBuf.loadProtoFile(__dirname+'/../fonts/google/tools/fonts_public.proto');


function writeGlyphs(opts) {
  return fsp.mkdir(opts.outputdir)
    .catch(function(err) {
      if(err && err.code !== "EEXIST") {
        throw err;
      }
    })
    .then(function() {
      return fontnik(opts);
    })
    .then(function(data) {
      var filename = opts.start + '-' + opts.end + '.pbf';
      var filepath = path.join(opts.outputdir, filename);
      return fsp.writeFile(filepath, data, {
        flag: "w"
      })
    });
}


function writeStack(fontpath, outputdir) {
  var p = []
  for (var i = 0; i < 65536; (i = i + 256)) {
    (function(i) {
      p.push(function() {
        return writeGlyphs({
          font: fs.readFileSync(fontpath),
          outputdir: outputdir,
          start: i,
          end: Math.min(i + 255, 65535)
        })
      })
    })(i)
  }
  return Promise.map(p, function(fn) {
    return fn()
  }, {concurrency: 1});
}



function getMeta() {
  return glob(__dirname+"/../fonts/google/**/METADATA.pb")
    .then(function(metaFiles) {
      var p = metaFiles.map(function(metaFilepath) {
        var rootDir = path.dirname(metaFilepath);

        return fsp.readFile(metaFilepath)
          .then(function(_data) {
            var parsed = TextFormat.parse(
              builder,
              'google.fonts.FamilyProto',
              _data.toString()
            );

            if(parsed.status !== true) {
              throw parsed.error;
            }
            return {
              dirpath: rootDir,
              meta: parsed.message
            };
          });
      })

      return Promise.all(p)
    });
}


var index = {
  fonts: []
};


getMeta()
  .then(function(_items) {
    var tasks = [];

    _items = _items
      .filter(function(obj) {
        return [
          "Noto Sans",
          "Noto Serif",
          "Roboto",
          "Roboto Condensed",
          "Roboto Mono",
          "Roboto Slab",
          "Lora",
          "Playfair Display",
          "Monda",
          "Vollkorn",
          "Gentium Basic",
          "Muli",
          "Libre Baskerville"
        ].indexOf(obj.meta.name) > -1;
      })

    _items.forEach(function(_item) {
      var _meta = _item.meta;

      var indexItem = {
        name:       _meta.name,
        license:    _meta.license,
        category:   _meta.category,
        date_added: _meta.date_added,
        specimen: "https://fonts.google.com/specimen/"+_meta.name.replace(/\s+/, "+"),
        styles: []
      }

      index.fonts.push(indexItem);


      _meta.fonts.forEach(function(font) {
        var outdir = path.join(__dirname, "..", "/glyphs/", font.full_name);
        function fn() {
          return writeStack(_item.dirpath+"/"+font.filename, outdir)
            .then(function() {
              indexItem.styles.push({
                name: font.full_name,
                style: font.style,
                weight: font.weight,
                path: path.join("/glyphs/", font.filename)
              })
            })
            .then(function() {
              var licensePath = path.join(_item.dirpath, _meta.license);
              return glob(_item.dirpath+"/{OFL.txt,LICENSE.txt}")
                .then(function(files) {
                  return Promise.all(
                    files.map(function(filepath) {
                      return fsp.readFile(filepath)
                        .then(function(data) {
                          var licensePath = path.join(outdir, path.basename(filepath));
                          return fsp.writeFile(licensePath, data);
                        });
                    })
                  )
                })
            })
            .catch(function(err) {
              indexItem.styles.push({
                name: font.full_name,
                error: err
              })
            })
        }

        tasks.push({
          name: font.full_name,
          fn: fn
        });
      })
    })

    var numComplete = 0;
    return Promise.map(tasks, function(obj, idx, len) {
      return obj.fn()
        .then(function() {
          numComplete++;
          console.log("[%s%] processed: '%s' (%s/%s)", Math.round(100/len*numComplete), obj.name, numComplete, len)
        })
    }, {
      concurrency: Math.max(8, os.cpus().length)
    })
  })
  .then(function(_fonts) {
    var indexPath = path.join(__dirname, "../glyphs/index.json");
    var json = JSON.stringify(index, null, 2);
    return fsp.writeFile(indexPath, json, {flags: "w"})
      .then(function() {
        console.log("Written %s", indexPath);
      })
  })
  .catch(function(err) {
    console.error("err", err);
  })


