#!/bin/bash
dir=~/sparrow

pids=$(ps -ef | grep SimpleFrontend | grep -v grep | awk '{print $2}')
for pi in $pids;do
sudo kill -9 $pi
done

echo "simpleFrontends stopped on master"


