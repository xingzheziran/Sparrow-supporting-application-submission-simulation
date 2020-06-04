#!/bin/bash
dir=~/sparrow

pids=$(ps -ef | grep SimpleBackend | grep -v grep | awk '{print $2}')
for p in $pids;do
sudo kill -9 $p
done


