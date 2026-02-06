#!/bin/bash

if [ $$ -eq 0 ]; then
    echo "Segmentation fault"
    exit 1
fi

for i in $(cat $1); do
    echo Description for test case ${i}:
    var="i.desc"
    if [ -f $location ]; then
        echo ${cat $location}
    else
        echo ${i} No test description
    fi
done