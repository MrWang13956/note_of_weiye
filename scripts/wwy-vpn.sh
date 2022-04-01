#!/bin/bash


if [ $1 = "-h" ]
then
	echo "-c connect vpn"
	echo "-d disconnect vpn"
elif [ $1 = "-c" ]
then
	vpn_pid=$(ps -ef | grep clash | grep -v grep | awk '{print $2}')
	if [ $vpn_pid ]
	then
		echo "vpn is connected1"
	else
		echo "connect vpn"
		cd /home/weiyew/bin/clash
		./clash -d . &
	fi
elif [ $1 = "-d" ]
then
	vpn_pid=$(ps -ef | grep clash | grep -v grep | awk '{print $2}')
	if [ $vpn_pid ]
	then
		kill -9 $vpn_pid
		echo "disconnect vpn $vpn_pid"
	else
		echo "vpn no connect!"
	fi
else
	echo "Please enter -h for help!"
fi
