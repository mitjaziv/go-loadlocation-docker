#!/bin/bash

NAME=$1

# Set ROOT to working directory (up one level from ./scripts/)
ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )
cd "${ROOT}"

# Create output directory
mkdir -p out

# Build statically
echo "Building statically"
CGO_ENABLED=0 go build -installsuffix cgo -a -ldflags "-s" -o out/$NAME
