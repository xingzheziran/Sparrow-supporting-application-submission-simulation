#!/bin/bash
if [ $# != 1 ];then
echo "one para needed"
exit
fi

function createDir {
if [ ! -d $1 ];then
mkdir -p $1
fi
}

dir=~/sparrow/sparrow-master
createDir $dir/svt/$1

for i in `seq 0 9`;do

$dir/start_sim_simplefrontend.sh ~/sparrow/apps/app-$i &

echo app-$i >> $dir/svt/$1/submit_ms.log

java Welcome >> $dir/svt/$1/submit_ms.log

echo " " >> $dir/svt/$1/submit_ms.log

#echo app-$i >> $dir/svt/submit_ms.log
#$dir/currentms.sh >> $dir/svt/submit_ms.log
#echo " " >> $dir/svt/submit_ms.log 

sleep 0.008
echo "app "$i" done"
done
 

