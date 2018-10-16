# font-glyphs
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
 - [Noto](https://github.com/googlei18n/noto-fonts)
 - [OpenSans](https://github.com/googlefonts/opensans)


## Usage
All glyphs are built on commit and written to `https://orangemug.github.io/font-glyphs/glyphs/{fontstack}/{range}.pbf` ready for using in your mapbox-gl styles


## Forking
If you'd like to fork this repo and generate CircleCI tests, you'll need to add ssh keys for writing to your repo. Details to do that are here <https://circleci.com/docs/adding-read-write-deployment-key/>


## License
See individual font licenses in [./fonts](/fonts)
