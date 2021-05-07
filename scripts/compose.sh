DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $DIR/../app

docker-compose -f app.compose.yml -f dyndns.compose.yml -f backup.compose.yml $@
