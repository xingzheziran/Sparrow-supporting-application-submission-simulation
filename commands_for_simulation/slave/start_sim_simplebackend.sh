#!/bin/bash
if [ $# != 1 ];then
echo "one para needed"
exit
fi

dir=~/sparrow
java -cp $dir/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleBackend -c $1 &




