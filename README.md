# font-glyphs
A repo to generate font glyphs ready for the [mapbox-gl styles](https://www.mapbox.com/mapbox-gl-style-spec).

**NOTE** This is a work in progress v2 see [font-glyphs](https://github.com/orangemug/font-glyphs) for the current stable repo.

[![stability-unstable](https://img.shields.io/badge/stability-unstable-yellow.svg)][stability]
[![Build Status](https://circleci.com/gh/orangemug/font-glyphs.png?style=shield)][circleci]
[![Dependency Status](https://david-dm.org/orangemug/font-glyphs.svg)][dm-prod]
[![Dev Dependency Status](https://david-dm.org/orangemug/font-glyphs/dev-status.svg)][dm-dev]

[stability]:   https://github.com/orangemug/stability-badges#unstable
[circleci]:    https://circleci.com/gh/orangemug/font-glyphs
[dm-prod]:     https://david-dm.org/orangemug/font-glyphs
[dm-dev]:      https://david-dm.org/orangemug/font-glyphs#info=devDependencies

Current fonts can be viewed here <https://github.com/orangemug/font-glyphs-v2/tree/gh-pages/glyphs>


## Usage
All glyphs are built on commit and written to `https://orangemug.github.io/font-glyphs/glyphs/{fontstack}/{range}.pbf` ready for using in your mapbox-gl styles

Features:

 - Easy to generate glyphs for any font in google fonts
   - See <https://github.com/orangemug/font-glyphs-v2/blob/master/lib/index.js> for details
   - Easy to generate new fonts <https://github.com/orangemug/font-glyphs-v2/blob/master/lib/index.js#L97-L111>
   - Auto finds LICENSE
 - Generated `index.json` describing all generated fonts, useful for an editor (maybe maputnik)
 - Reports to check whether a font is fit for the task


## Work in progress
The following features are a work in progress

### Fallback glyphs
Currently we do not provides fallbacks for missing glyphs in the font, this is a work in progress. The suitability of a font can be determined via the _reports_ below.

### Reports
We generate reports for every font we use in order to check its coverage

See: <https://orangemug.github.io/font-glyphs-v2/reports/char-table.html> **NOTE** its currently one very large html table (22mb)


## Forking
If you'd like to fork this repo and generate CircleCI tests, you'll need to add ssh keys for writing to your repo. Details to do that are here <https://circleci.com/docs/adding-read-write-deployment-key/>


## License
See individual font licenses in [./fonts](/fonts)
