#!/bin/bash

cat 2019-sample-clean.csv | wc

cat 2019-sample-clean.csv | grep electronics | grep smartphone | awk -F ',' '{print $5}' | sort | uniq -c | sort -nr
