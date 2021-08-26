#!/bin/sh

redis-cli --cluster create \
    $(getent hosts node1.redis62-cluster.devbox.local | awk '{ print $1 }'):6379 \
    $(getent hosts node2.redis62-cluster.devbox.local | awk '{ print $1 }'):6380 \
    $(getent hosts node3.redis62-cluster.devbox.local | awk '{ print $1 }'):6381 \
    --cluster-replicas 0 --cluster-yes \;