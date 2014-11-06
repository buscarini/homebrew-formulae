#!/usr/bin/env bash

curl -fsSL $1 > jjdeploy
shasum jjdeploy
rm jjdeploy