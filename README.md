# font-glyphs
A script to generate font glyphs ready for the [mapbox-gl styles](https://www.mapbox.com/mapbox-gl-style-spec).

[![stability-unstable](https://img.shields.io/badge/stability-unstable-yellow.svg)][stability]
[![Build Status](https://circleci.com/gh/orangemug/font-glyphs.png?style=shield)][circleci]
[![Dependency Status](https://david-dm.org/orangemug/font-glyphs.svg)][dm-prod]
[![Dev Dependency Status](https://david-dm.org/orangemug/font-glyphs/dev-status.svg)][dm-dev]

[stability]:   https://github.com/orangemug/stability-badges#unstable
[circleci]:    https://circleci.com/gh/orangemug/font-glyphs
[dm-prod]:     https://david-dm.org/orangemug/font-glyphs
[dm-dev]:      https://david-dm.org/orangemug/font-glyphs#info=devDependencies

Currently

 - [Roboto](https://github.com/google/roboto)



## Dev usage

```
$ git checkout https://github.com/orangemug/font-glyphs.git
$ cd font-glyphs
$ git submodule sync
$ git submodule update --init
$ ./generate.sh
Glyphs written to `/Users/user/font-glyphs/glyphs`
``` 


## License
See individual font licenses in [./fonts](/fonts)
