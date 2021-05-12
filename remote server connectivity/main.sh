#! /bin/bash

hosts="./myhosts"
RED='\033[0;31m'
NC='\033[0m' # No Color
for ip in $(cat $hosts)
    do
    ping -c1 $ip
    if [ $? -eq 0 ]
    then
        echo $ip "OK"
    else
        printf "${RED} $ip ${NC} is not ok\n"
    fi
done