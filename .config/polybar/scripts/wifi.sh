#!/bin/bash

t=0

toggle() {
    t=$(((t + 1) % 2))
}


trap "toggle" USR1

while true; do
    if [ $t -eq 0 ]; then
        wget -q --tries=10 --timeout=10 --spider http://google.com
        if [[ $? -eq 0 ]]; then
            ssid=$( iwgetid -r )
            echo '' $ssid
        else
            echo ""
        fi
    else
        wget -q --tries=10 --timeout=10 --spider http://google.com
        if [[ $? -eq 0 ]]; then
            echo ""
        else
            echo ""
        fi
    fi
    sleep 1 &
    wait
done
