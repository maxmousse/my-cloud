DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/../app

docker-compose -f docker-compose.yml -f docker-compose.dyndns.yml $@
