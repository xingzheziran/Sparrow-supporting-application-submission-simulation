#!/bin/bash
if [ $# != 1 ];then
echo "config file needed"
exit
fi

dir=~/sparrow
java -cp $dir/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.examples.SimpleFrontend -c $1




