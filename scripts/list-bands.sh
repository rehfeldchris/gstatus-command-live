#!/usr/bin/env bash


ret=$(./run-at-cmd.sh 'AT!BAND=?')
if [ $? -ne 0 ]; then
    echo "failed"
else
    echo "$ret"
fi