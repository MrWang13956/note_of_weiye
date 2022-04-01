#!/bin/bash

echo "########help########"
echo "minicom -s   config"
echo "ctrl+a  q    exit"
echo "ctrl+a  n    timestamp"
echo "ctrl+a  s    send file(zmodem)"
echo "ctrl+a  r    receive file(zmodem)"
echo -e "####################"

ports_USB=$(ls /dev/ttyUSB*)
ports="$ports_USB"

logfile=$(date | sed 's/ //g')

select port in $ports;do
    if [ "$port" ]; then
        echo "You select the choice '$port'"
		touch /tmp/"$logfile".ttyUSBlog
		minicom -D "$port" -C /tmp/"$logfile".ttyUSBlog
        break
    else
        echo "Invaild selection"
    fi
done
