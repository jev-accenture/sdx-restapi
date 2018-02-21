#!/bin/sh

DIR=$(dirname "$0")

cd "${DIR}/../" || exit 1

echo "# Building..."

docker build -t python-restapi . || exit 2

echo "# Done!"

