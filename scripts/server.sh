#!/usr/bin/env bash

delay=${1:-2}




for i in {1..500000}
do
#    ret=$(./get-modem-status.sh 2>/dev/null)
#    if [ $? -ne 0 ]; then
#        echo "failed"
#    else
#        clear
#        echo "$ret"
#    fi

    ret=hjalo


read -r -d '' resp <<EOF

HTTP/1.0 200 OK
Connection: close
Content-type: text/plain

$ret
EOF
     echo "$resp" | nc -Cl 0.0.0.0 8080

#    sleep $delay
done
