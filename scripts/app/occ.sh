#!/usr/bin/env bash

# -------------------------------------------
# Note:
# 
# This script runs occ command line tool in
# nextcloud container
# -------------------------------------------

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/../../app

docker-compose -f app.compose.yml run --rm --user www-data -e PHP_MEMORY_LIMIT=1024M app php occ $@
