#/bin/bash
dir=~/sparrow
java -XX:+UseConcMarkSweepGC -cp $dir/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.daemon.SparrowDaemon -c $dir/sparrow.conf &

echo "sparrow started on master"

for s in slave1 slave2 slave3 slave5 slave6;do
ssh mesos@$s bash ~/sparrow/start_sparrow.sh &
echo "sparrow started on "$s
done

