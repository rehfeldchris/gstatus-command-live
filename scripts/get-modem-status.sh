#!/usr/bin/env bash

# Be sure to use only stdout to capture the result, as stderr may
# be polluted with chat from telnet even when everything suceeds.

host=192.168.1.1
port=5510
CMD='AT!GSTATUS?'
waitSeconds=1


ret=$(./run-at-cmd.sh 'AT!GSTATUS?')

# Do a quick check to make sure the result looks like what we expected.
if [ -z "${ret##*LTE*}" ] ; then
    # Strip off some of the telnet chat so we isolate to the response we care about.
#    echo "$ret"
    echo "${ret##*GSTATUS:}"
else
    echo 'Error: failed to get status due to receiving a bad return value' >&2
    exit 1
fi

