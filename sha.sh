#!/usr/bin/env bash

if [ $# -lt 1 ];
then
	echo "Usage: sha.sh jjdeploy_version | url (Example: sha.sh 0.2.3)"
	exit 1
fi

url=$1
if [[ $url != https://* ]];
then
url="https://github.com/buscarini/jjdeploy/archive/"$url".tar.gz"
fi

curl -fsSL $url > jjdeploy
sha="$(shasum README.md | awk '{print $1}' | sed -e 's/^ *//' -e 's/ *$//' )"
echo -n $sha | pbcopy
echo "Copied sha to pasteboard"
rm jjdeploy