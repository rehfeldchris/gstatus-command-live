#!/usr/bin/env bash

# Be sure to use only stdout to capture the result, as stderr may
# be polluted with chat from telnet even when everything suceeds.

host=192.168.1.1
port=5510
CMD="$1"
waitSeconds=1
# todo, strip telnet junk

# We try both telnet and netcat
if [ -x "$(command -v telnet)" ]; then
    ret=$((echo "$CMD" && sleep $waitSeconds) | telnet $host $port)
    echo "${ret}" | perl -0777 -pe "s/^.+Escape character is '\^\]'.//gis"
#    echo "${ret##*Escape character is \'^]\'.}"
elif [ -x "$(command -v nc)" ]; then
    # I'm not sure if the carriage return is needed / will work when running this on linux. On windows, I needed it.
    ret=$(echo -e "$CMD\r\n" | nc -q $waitSeconds $host $port)
    echo "$ret"
else
    echo 'Error: install either telnet or netcat/nc' >&2
    exit 1
fi

