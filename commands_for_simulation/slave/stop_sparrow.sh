#!/bin/bash
dir=~/sparrow
pid=$(ps -ef | grep SparrowDaemon | grep -v grep | awk '{print $2}')
sudo kill -9 $pid

