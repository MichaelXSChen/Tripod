#!/bin/bash
RandID=$RANDOM
sed 's/elastic-search/elastic-search'$RandID'/' description.tpl > description.json
curl -X POST http://202.45.128.160:8080/v2/apps -d @description.json -H "Content-type: application/json" 
#date > time-start-sent
echo RandID=$RandID > rand-id
