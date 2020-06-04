#!/bin/bash
dir=~/sparrow
pid=$(ps -ef | grep SparrowDaemon | grep -v grep | awk '{print $2}')
sudo kill -9 $pid
echo "sparrow stopped on master"

for s in slave1 slave2 slave3 slave5 slave6;do
ssh mesos@$s bash $dir/stop_sparrow.sh 
echo "sparrow stopped on "$s
done

