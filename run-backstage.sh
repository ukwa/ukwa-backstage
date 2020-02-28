#!/bin/sh

# Set up vars to run against Docker Compose services:
export TRACKDB_SOLR_URL=http://localhost:8983/solr/tracking
export DEPLOY_RELATIVE_URL_ROOT=/intranet

# Run the app
cd backstage
bundle exec rails db:migrate 
bundle exec rails s
