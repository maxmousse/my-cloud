#!/usr/bin/env bash

# -------------------------------------------
# Note:
# 
# This script is a simple shortcut to 
# see logs of the app
# -------------------------------------------

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/../../app

docker-compose -f app.compose.yml -f dyndns.compose.yml logs $@

