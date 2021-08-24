#!/bin/bash

TIMESTUMP=$(date "+%H:%M:%S %d.%m.%Y")

find /opt/hellthrash/images/ -type f -name "*.jpeg" -cmin -60 -size +400k > /opt/hellthrash/periodic/run_$TIMESTAMP.txt
