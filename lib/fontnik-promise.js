var fontnik = require("fontnik");

module.exports = function(opts) {
  return new Promise(function(resolve, reject) {
    fontnik.range(opts, function(err, data) {
      if(err) {
        reject(err);
      }
      else {
        resolve(data);
      }
    })
  });
}
