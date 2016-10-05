#!/bin/bash

export INSTANCE_IP=`hostname -i`
exec node main.js
