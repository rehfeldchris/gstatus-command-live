#!/usr/bin/env bash

# Outputs the result of various informational AT commands, including stuff like model / serial etc...

# https://electronicsforu.com/resources/cool-stuff-misc/gsm-at-commands
commands=( 'AT+CGMI' 'AT+CGMM' 'AT+CGMR' 'AT+CGSN' 'AT+CMEE' 'AT+CSQ'     'AT+GCAP' 'AT+GMI' 'AT+GMM' 'AT+GMR' 'AT+GSN' )
for cmd in "${commands[@]}"
do
	echo "Running command: ${cmd}"
	./run-at-cmd.sh "${cmd}"
done

echo "Manufacturer identification: "
./run-at-cmd.sh 'AT+CGMI'

echo "Model: "
./run-at-cmd.sh 'AT+GMM'

echo "Revision: "
./run-at-cmd.sh 'AT+GMR'

echo "Serial / IMEI: "
./run-at-cmd.sh 'AT+GSN'
