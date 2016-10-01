#!/bin/bash
set -e

./generate.sh

SHA=`git rev-parse --verify HEAD`

git checkout gh-pages || git checkout --orphan gh-pages

git add glyphs
git commit -m "Deploy to GitHub Pages: ${SHA}"

git push origin gh-pages
git checkout master

