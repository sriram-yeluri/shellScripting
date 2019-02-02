#!/bin/bash
#Script to deploy mkdocs generated site to sriram-yeluri.github.io

SRC=/home/$USERNAME/bitbucket_repos/docs/site
DST=/home/$USERNAME/github_repos/sriram-yeluri.github.io

if [[ -d ${SRC} && -d ${DST} ]] ; then
    echo "Check passed. Proceed with deployment ...! "
    cp -r -p ${SRC}/* ${DST}
else
    echo "Missing Source and Destination folders ...!"
fi
