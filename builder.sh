#!/bin/bash
set -e
DIR=$1
COMMAND=$2

info () {
    log "\e[1m$1"
}
success () {
    log "\e[32m$1"
}
log () {
    echo -e "[go-build] $1 \e[0m"
}

# Go to the src directory that is mounted
cd /go/src/$DIR

if [ "$COMMAND" == "test" ]; then
    info "Starting go test"
    go test
    success "Finished go test ✅"

    info "Starting go vet"
    go vet
    success "Finished go vet ✅"

    info "Starting go fmt"
    go fmt
    success "Finished go fmt ✅"
fi

if [ "$COMMAND" == "build" ]; then
    info "Installing dependencies with Glide..."
    glide install
    success "Finished installing dependencies"
fi
