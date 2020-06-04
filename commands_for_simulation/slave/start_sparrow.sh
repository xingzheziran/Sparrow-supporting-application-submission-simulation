#!/bin/bash
dir=~/sparrow
java -XX:+UseConcMarkSweepGC -cp $dir/sparrow-1.0-SNAPSHOT.jar edu.berkeley.sparrow.daemon.SparrowDaemon -c $dir/sparrow.conf &
