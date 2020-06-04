#!/bin/bash
if [ $# != 1 ];then
echo "one para needed"
exit
fi

dir=~/sparrow
java -cp $dir/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleBackend -c $1 &

echo "simplebackend started on master"

for s in slave1 slave2 slave3 slave5 slave6;do
ssh mesos@$s bash $dir/start_sim_simplebackend.sh $1 &
echo "simplebackend started on "$s
done



