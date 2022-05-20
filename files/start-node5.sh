#!/bin/bash
set -e
sleep 20
node1=$(getent hosts node-1 | awk '{ print $1 }')
node2=$(getent hosts node-2 | awk '{ print $1 }')
node3=$(getent hosts node-3 | awk '{ print $1 }')
node4=$(getent hosts node-4 | awk '{ print $1 }')
node5=$(getent hosts node-5 | awk '{ print $1 }')
./camino-node --api-ipcs-enabled=true --chain-config-dir=/files/chain-config --api-admin-enabled=true --http-host=${node5} --network-id=local --index-enabled=true --staking-enabled=true --http-port=9650 --staking-port=9651 --log-level=trace --bootstrap-ids=NodeID-7Xhw2mDxuDS44j42TCB6U5579esbSt3Lg --bootstrap-ips=${node1}:9651 --staking-tls-cert-file=/files/certs/keys5/staker.crt --staking-tls-key-file=/files/certs/keys5/staker.key