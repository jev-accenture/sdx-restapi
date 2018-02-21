#!/bin/sh

if [ $# -ne 1 ]; then
  echo "$(basename "$0"): error: wrong usage" >&2
  echo "Usage: $(basename "$0") <container>"
  exit 1
fi

DIR=$(dirname "$0")

cd "${DIR}/../" || exit 2

echo "# Cleaning..."

docker stop $1 || exit 3

sleep 2

docker rm $1 || exit 4

sleep 1

docker ps -a

echo "# Done!"

