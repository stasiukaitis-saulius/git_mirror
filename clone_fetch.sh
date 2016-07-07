#!/bin/bash

echo "Read repositories list"

while read repository; do
    echo "Will clone repository:" $repository
    ./clone_fetch_item.sh "$repository"
done < repositories_list.txt

echo "End Reading repositories"
