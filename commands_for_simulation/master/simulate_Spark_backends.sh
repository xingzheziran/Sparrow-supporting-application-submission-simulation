#!/bin/bash
dir=~/sparrow/sparrow-master

for i in `seq 0 9`;do

$dir/start_sim_simplebackends.sh ~/sparrow/apps/app-$i
sleep 0.008
echo "app "$i" done"
done

