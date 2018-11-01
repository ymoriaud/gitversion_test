#!/bin/sh
version=$(gitversion /showvariable SemVer)
commit_hash=$(git rev-parse --short HEAD)

git tag -a $version -m "New tag from $commit_hash"

git push --tags