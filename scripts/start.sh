#!/bin/bash

if [ -z "$INSTANCE_IP" ]; then
    echo "Setting INSTANCE_IP to container IP"
    export INSTANCE_IP=`hostname -i`
fi

if [ -z "$MAX_OLD_SPACE_SIZE"]; then
    echo "Setting MAX_OLD_SPACE_SIZE to default 1536MB"
    export MAX_OLD_SPACE_SIZE=1536
fi

exec node --max-old-space-size=$MAX_OLD_SPACE_SIZE main.js
