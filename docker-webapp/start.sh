#!/bin/bash
sed 's/bridged-webapp/bridged-webapp'$RANDOM'/' description.tpl > description.json
curl -X POST http://202.45.128.160:8080/v2/apps -d @description.json -H "Content-type: application/json"
