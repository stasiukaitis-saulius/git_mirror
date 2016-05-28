#!/bin/bash

while read item; do
    ./clone_fetch_item.sh "$item"
done < list.txt
