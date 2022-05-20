#!/bin/bash
node1=$(getent hosts node-1 | awk '{ print $1 }')
./camino-node --api-ipcs-enabled=true --chain-config-dir=/files/chain-config --http-host=${node1} --public-ip=${node1} --network-id=local --index-enabled=true --staking-enabled=true --http-port=9650 --staking-port=9651 --staking-tls-cert-file=/files/certs/keys1/staker.crt --staking-tls-key-file=/files/certs/keys1/staker.key --log-level=trace
