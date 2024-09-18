#!/bin/bash 

export USER=james.yarnell1@bayer.com
export VAULT_ADDR='https://vault.agro.services'
vault token lookup > /dev/null 2>&1
if [ $? -ne 0 ]; then
    #echo 'Password (will be hidden): '; read -s pw; vault login --path ping --method userpass username=$USER password="$pw"; unset pw
    vault login -method=oidc;
fi

cd
vault write -field signed_key ssh/sign/monuser public_key=@.ssh/id_ed25519.pub > .ssh/id_ed25519-cert.pub
chmod 600 ~/.ssh/id_ed25519-cert.pub
cd -