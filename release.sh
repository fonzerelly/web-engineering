#!/bin/sh
echo ------------ start release --------------
npm version minor
git checkout gh-pages
git merge master
sed -i -- 's/node_modules\/reveal\.js/https:\/\/cdnjs.cloudflare.com\/ajax\/libs\/reveal.js\/3.6.0/g' index.html
git add index.html
git commit -m "Auto: replace node_modules with CDN"
git push origin gh-pages
git checkout master
echo ------------ release finished ------------
 