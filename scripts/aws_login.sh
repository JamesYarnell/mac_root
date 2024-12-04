!/bin/bash

(return 0 2>/dev/null) && sourced=1 || sourced=0

if [[ $sourced -ne 1 ]]
then
echo "Please run script with source, e.g. source $0"
exit 1
fi

logon ()
{
        # local PROXY_IP="10.185.190.100"
        # local proxy_user=glqzp
        local aws_user=james.yarnell1@bayer.com

        # if ping -c 1 -W 1 $PROXY_IP &> /dev/null; then
        #         local pwd=""
        #         echo -n "Enter Password (identical for both): " 
        #         read -s pwd
        #         export HTTP_PROXY=http://$proxy_user:$pwd@1$PROXY_IP:8080
        #         export HTTPS_PROXY=http://$proxy_user:$pwd@$PROXY_IP:8080

        #         echo ""
        #         echo "Proxy settings set successfully."
        #         echo "Proxy User: $proxy_user"
        # else
        #         unset HTTP_PROXY
        #         unset HTTPS_PROXY
        #         echo "Not on VPN. Unset proxy values"
        # fi
        
        echo "AWS User:   $aws_user"

        echo ""
        echo "Now calling aws-sso. Please be patient and do not press any key"
        #aws-sso --profile default --username $aws_user --password $pwd
        #awssso --username $aws_user --rememberMe false 
        awssso

        echo "Getting your AWS caller identity..."
        echo "$(aws sts get-caller-identity)"
}

logon
