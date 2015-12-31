#!/usr/bin/env sh
TEMPLATE_FILE=$1
ENV_PREFIX=$2

env | grep "^$ENV_PREFIX" | while IFS="=" read -r name value; do
printf "s/%s/%s/\n" "\$\{${name}\}" "$value"
done > sed-script.txt

#cat sed-script.txt   # Optional
sed -f sed-script.txt "$TEMPLATE_FILE"
rm sed-script.txt
