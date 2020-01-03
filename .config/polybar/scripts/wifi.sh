#!/bin/bash

connection=$( iwconfig 2>&1 | grep off/any )

if [ -z "$connection" ]
then
    ssid=$( iwgetid -r)
    wifi=''
else
    ssid=''
    wifi=''
fi


t=0

toggle() {
    t=$(((t + 1) % 2))
}


trap "toggle" USR1

while true; do
    if [ $t -eq 0 ]; then
        if [[ -z "$connection" ]]
        then
            ssid=$( iwgetid -r)
            wifi=''
        else
            ssid=' '
            wifi=' '
        fi
        echo $wifi $ssid
    else
        if [[ -z "$connection" ]]
        then
            ssid=$( iwgetid -r)
            wifi=''
        else
            ssid=' '
            wifi=' '
        fi
        echo $wifi
    fi
    sleep 1 &
    wait
done
