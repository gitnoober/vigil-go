#!/bin/zsh

# This is the bare minimum to run in development. For full list of flags,
# run ./vigil-go -help

go build -o vigil-go cmd/web/*.go && ./vigil-go \
-dbuser='postgres' \
-pusherHost='localhost' \
-pusherKey='abc123' \
-pusherSecret='123abc' \
-pusherApp="1" \
-pusherPort="4001" \
-pusherSecure=false 