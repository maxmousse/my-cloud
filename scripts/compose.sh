#!/usr/bin/env bash

# -------------------------------------------
# Note:
# 
# This script is a simple shortcut to run 
# docker-compose commands without always 
# repeating the file override params!
# -------------------------------------------

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/../app

docker-compose -f app.compose.yml -f dyndns.compose.yml $@
