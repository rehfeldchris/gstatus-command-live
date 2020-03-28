#!/usr/bin/env bash

delay=${1:-2}

echo "Will attempt to refresh screen every $delay seconds"

for i in {1..500000}
do
    ret=$(./get-modem-status.sh 2>/dev/null)
    if [ $? -ne 0 ]; then
        echo "failed"
    else
        dt=$(date '+%F %T')
        clear
        #date
        echo -e "$dt\n$ret"

        if [[ "$ret" =~ "SCC" ]]; then
            echo "OMFG MIMO!"
        fi
    fi

    sleep $delay
done