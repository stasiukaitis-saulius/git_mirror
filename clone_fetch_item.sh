#!/bin/bash

repository="$1"
pathToMirror="mirrors/$repository"

if [[ ! -d $pathToMirror ]] ; then
    echo "Clone item $repository"

    if [[ $repository == OXID* ]] ; then
        echo "Clone SSH"
        git clone --mirror git@github.com:$repository.git $pathToMirror
    else
        echo "Clone HTTPS"
        git clone --mirror https://github.com/$repository.git $pathToMirror
    fi
else
    echo "Fetch item $repository"
    cd $pathToMirror && git fetch origin && git fetch -t origin
fi
