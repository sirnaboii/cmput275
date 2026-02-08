#!/bin/bash

for i in $(cat $2); do
    in=$i.in
    out=$i.out
    cmdin=$(${1} < ${in})
    if [ "$cmdin" = "$(cat $out)" ]; then
        echo Test $i passed
    else
        echo Test $i failed
        echo Expected output: 
        cat $out
        echo Actual output: 
        echo "$cmdin"
    fi
done