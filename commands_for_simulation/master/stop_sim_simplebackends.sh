#!/bin/bash
dir=~/sparrow

pids=$(ps -ef | grep SimpleBackend | grep -v grep | awk '{print $2}')
for pi in $pids;do
sudo kill -9 $pi
done

echo "simpleBackends stopped on master"

for s in slave1 slave2 slave3 slave5 slave6;do
ssh mesos@$s bash $dir/stop_sim_simplebackend.sh
echo "simpleBackend stopped on "$s
done

