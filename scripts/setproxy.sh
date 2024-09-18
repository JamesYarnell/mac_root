#!/usr/bin/env bash

(return 0 2>/dev/null) && sourced=1 || sourced=0

if [[ $sourced -ne 1 ]]
then
echo "Please run script with source, e.g. source $0"
exit 1
fi

if [ -z "$HTTP_PROXY" ]; then
  local proxy_user=glqzp
    local aws_user=james.yarnell1@bayer.com

    echo "Proxy User: $proxy_user"
    echo "AWS User:   $aws_user"
    local pwd=""
    echo -n "Enter Password (identical for both): " 
    read -s pwd

    export HTTP_PROXY=http://$proxy_user:$pwd@10.185.190.100:8080
    export HTTPS_PROXY=http://$proxy_user:$pwd@10.185.190.100:8080
else
    echo "Proxy already set"
fi

