#!/bin/bash

item="$1"
p="out/$item"

if [[ ! -d $p ]] ; then
    echo "Clone item $item"
    if [[ $item == OXID* || $item == rezonanc* ]] ; then
        git clone --mirror git@github.com:$item.git $p
    else
        git clone --mirror https://github.com/$item.git $p
    fi
else
    echo "Fetch item $item"
    cd $p && git fetch origin && git fetch -t origin
fi
