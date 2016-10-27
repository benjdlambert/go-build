#!/bin/bash
set -e
DIR=$1
COMMAND=$2

# Go to the src directory that is mounted
cd /go/src/$DIR

if [ "$COMMAND" == "test" ]; then
    go test
    go fmt
fi

