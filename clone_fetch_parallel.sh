#!/bin/bash

parallel -j 16 -a repositories_list.txt "./clone_fetch_item.sh {}"
