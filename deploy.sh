#!/bin/bash
set -e

if [[ -n $(git status -s) ]]; then
  >&2 echo "Error: Working directory not clean"
  exit 1
fi

>&2 echo "Generating glyphs"
./generate.sh

SHA=`git rev-parse --verify HEAD`

git config --global user.name "Deploy bot"
git config --global user.email "deploybot@maputnik.com"

mv glyphs.json glyphs.json.new
git checkout -b gh-pages origin/gh-pages || git checkout --orphan gh-pages
mv glyphs.json.new glyphs.json

rm .git/index

git add -f glyphs
git add -f glyphs.json

if [ -n "`git diff --staged`" ]; then
  git commit -m "Deploy to GitHub Pages: ${SHA}"
  git push origin gh-pages
else
  >&2 echo "Nothing to deploy"
fi

git checkout master -f
