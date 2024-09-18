#!/bin/sh

# PEMFILE=~/.ssh/inception.pem
TARGET=$@
script_full_path=$(dirname "$0")

cd $script_full_path

if [ -z $TARGET ]; then
    printf "[0] aws-postgres-np
[1] aws-postgres-prod
[2] postgres-np
[3] postgres-prod
[4] prodcon-np
[5] prodcon-dev
[6] prodcon-prod

Select connection:
"

    read SELECTION

    case $SELECTION in
        0)
            TARGET=aws-postgres-np
            ;;
        1)
            TARGET=aws-postgres-prod
            ;;
        2)
            TARGET=postgres-np
            ;;
        3)
            TARGET=postgres-prod
            ;;
        4)
            TARGET=prodcon-np
            ;;
        5)
            TARGET=prodcon-dev
            ;;
        6)
            TARGET=prodcon-prod
            ;;
    esac

    if [ -z $TARGET ]; then
        printf "Invalid selection"
        exit 1
    fi
fi
~/scripts/vault-sign.sh

# if [ $1 == 'aws-postgres-np' ]; then
#     PEM=`vault read -field=inception_dev_ssh secret/breeding-it-techknights/aws`
#     printf -- "$PEM"  > $PEMFILE
# fi

# if [ $1 == 'aws-postgres-prod' ]; then
#     PEM=`vault read -field=inception_prod_ssh secret/breeding-it-techknights/aws`
#     printf -- "$PEM"  > $PEMFILE
# fi

# Execute the original SSH command
ssh -v $TARGET


# if [ -f "$PEMFILE" ]; then
#     rm $PEMFILE
# fi