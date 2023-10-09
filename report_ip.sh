#!/bin/bash
DeviceName=AAA
PushDeerKey=XXX

# check netstat
while true; do (echo `ifconfig|grep 192.168`) && break;sleep 1;done;

IP=$(echo `ifconfig|grep 192.168|awk -F ' ' '{print $2}'`)
# send post
curl -X 'POST' https://api2.pushdeer.com/message/push --data-urlencode "pushkey=$PushDeerKey" --data-urlencode "text=$DeviceName IP是 $IP"
