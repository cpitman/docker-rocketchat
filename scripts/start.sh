#!/bin/bash

if [ -z "$INSTANCE_IP" ]; then
    echo "Setting INSTANCE_IP to container IP"
    export INSTANCE_IP=`hostname -i`
fi

exec node --prof main.js
