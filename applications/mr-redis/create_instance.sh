#!/bin/bash
RandID=$RANDOM
./mrr init http://202.45.128.160:5656
./mrr create -n radis-${RandID} -m 200 -s 2
echo RandID=$RandID > rand-id
