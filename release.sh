#!/bin/sh
set -e
echo ------------ start release --------------
npm version minor
echo ***** versioning done
git checkout gh-pages
echo ***** in gh-pages
git merge master -X theirs
echo ***** master merged
sed -i -- 's/node_modules\/reveal\.js/https:\/\/cdnjs.cloudflare.com\/ajax\/libs\/reveal.js\/3.6.0/g' index.html
echo ***** activate controls
sed -i -- 's/\/#\//\/web-engineering\/#\//' index.html
sed -i -- 's/controls: false/controls: true/g' index.html
echo ***** replaced node_modules by cdn
git add index.html
echo adding index.html
git commit -m "Auto: replace node_modules with CDN"
echo commiting index.html
git push origin gh-pages
echo releasing...
git checkout master
echo ------------ release finished ------------
 