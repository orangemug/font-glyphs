var map = new mapboxgl.Map({
  container: 'map',
  center: [8.538961,47.372476],
  zoom: 5,
  hash: true
});

var style = fetch("osm-liberty.json")
  .then(function(resp) {
    return resp.json()
      .then(function(style) {
        if(location.host.match(/^localhost/)) {
          style.glyphs = "http://localhost:5000/glyphs/{fontstack}/{range}.pbf"
          return style;
        }
      })
  })

style.then(function(data) {
  map.setStyle(data);
});

var glyphs = fetch("/glyphs/index.json")
  .then(function(resp) {
    return resp.json()
  })
  .then(function(data) {
    var styles = [];
    data.fonts.forEach(function(_font) {
      _font.styles.forEach(function(_style) {
        styles.push(_style);
      })
    })

    var selectEl = document.querySelector("select");
    styles.forEach(function(_style) {
      var optEl = document.createElement("option");
      optEl.innerText = _style.name;
      optEl.setAttribute("value", _style.name);
      selectEl.appendChild(optEl);
    })

    selectEl.addEventListener("change", function() {
      if(selectEl.value) {
        changeStyle(selectEl.value);
      }
    })

  })

function changeStyle(name) {
  style
    .then(function(_style) {
      _style.layers.forEach(function(_layer) {
        if(_layer.layout && _layer.layout.hasOwnProperty("text-font")) {
          map.setLayoutProperty(_layer.id, "text-font", [
            name
          ]);
        }
      })
    })
}

map.addControl(new mapboxgl.Navigation());
