#!/bin/sh
set -e
echo ------------ start release --------------
git config credential.helper cache
echo ***** git configured to request credentials only once
local_exists=`git show-ref refs/heads/gh-pages`
if [ -n "$local_exists" ]; then
    git branch -D gh-pages
    echo ***** local gh-pages deleted
fi

remote_exists=`git ls-remote origin | grep gh-pages`
if [ -n "$remote_exists" ]; then
    git push origin --delete gh-pages
    echo ***** remote gh-pages deleted
fi
npm version minor
echo ***** versioning done
git checkout -b gh-pages
echo ***** in gh-pages
git merge master -X theirs
echo ***** master merged
sed -i -- 's/node_modules\/reveal\.js/https:\/\/cdnjs.cloudflare.com\/ajax\/libs\/reveal.js\/3.6.0/g' index.html
echo ***** activate controls
sed -i -- 's/\/#\//\/web-engineering\/#\//' index.html
echo ***** adjusted relative links
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
 