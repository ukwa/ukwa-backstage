#!/bin/sh

curl -X POST -H "Content-Type: application/json" "http://localhost:8983/solr/tracking/update?commit=true" --data-binary @trackdb-sample.json

