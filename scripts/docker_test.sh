#!/bin/sh

if [ $# -ne 1 ]; then
  echo "$(basename "$0"): error: wrong usage" >&2
  echo "Usage: $(basename "$0") <ip address>"
  exit 1
fi

DIR=$(dirname "$0")

cd "${DIR}/../" || exit 1

__port="12345"

echo "# Testing... ($1:${__port})"

(curl -s http://$1:${__port}/todos && echo "OK :)") || echo "Fail :("
(curl -s http://$1:${__port}/todos/todo1 && echo "OK :)") || echo "Fail :("

echo "# Done!"

