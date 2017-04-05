#!/bin/sh
#
# Update the Formula for a new version.
#
# Usage: ./release VERSION
#
# Requires sha1sum be installed.
#
###
set -e

if [ -z "$1" ]; then
  echo "usage: ./release VERSION" >&2
  exit 64
fi

version=$1
formula=Formula/jjdeploy.rb

sha256=$(curl -sL "https://github.com/buscarini/jjdeploy/archive/$version.tar.gz" | shasum -a256 | cut -d " " -f 1)

git checkout master
git pull

sed 's/^\(.*archive\/\).*\(.tar.gz"\)$/\1'"$version"'\2/' "$formula" > "$formula.modified"
sed 's/^\(.*sha256 "\).*\(".*\)$/\1'"$sha256"'\2/' "$formula.modified" > "$formula"
rm "$formula.modified"

git add "$formula"
git commit -m "jjdeploy $version"
git show
git push