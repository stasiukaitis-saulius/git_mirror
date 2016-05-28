#!/bin/bash

parallel -j 16 -a list.txt "./clone_fetch_item.sh {}"
