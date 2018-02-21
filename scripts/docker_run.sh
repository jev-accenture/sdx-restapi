#!/bin/sh

DIR=$(dirname "$0")

cd "${DIR}/../" || exit 1

echo "# Starting..."

docker run -d -p 12345:12345 --name my-restapi python-restapi || exit 2

sleep 2

docker ps

echo "# Done!"

