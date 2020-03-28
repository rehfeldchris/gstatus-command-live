#!/usr/bin/env bash

./list-bands.sh

echo -e "\n\n\n"
echo

read -p "Enter the index to select:" bandEntryIndex

if [ -z "$bandEntryIndex"  ]; then
   echo "empty"
else
    ./run-at-cmd.sh 'AT!BAND='"$bandEntryIndex"
    echo 'Index set, showing current status. You may need to wait a few more seconds before the modem will update.'
    sleep 2
    ./get-modem-status.sh

fi