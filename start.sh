#!/bin/bash
SSIPv4=`/bin/cat /home/ss$1/ss.json | jq '.server' | tr -d \"`
/usr/local/bin/ssserver -a ss$1 -c /home/ss$1/ss.json --outbound-bind-addr $SSIPv4 --dns google