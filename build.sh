#!/bin/bash

# for returning later to the main directory
ROOT_DIRECTORY=./

# read repository configuration
source $ROOT_DIRECTORY/vars

# build all enabled versions
for VERSION in $NODE_VERSIONS; do
    for NAMESPACE in $NAMESPACES; do
        echo $'\n\n'"--> Building dockernodejs/passenger:$NAMESPACE-node-$VERSION"$'\n'

        if [ -d "$ROOT_DIRECTORY/image/$NAMESPACE" ]; then
            docker build --no-cache --compress -q -t dockernodejs/passenger:$NAMESPACE-node-$VERSION --build-arg NODE_VERSION=$VERSION -f $ROOT_DIRECTORY/image/$NAMESPACE/Dockerfile .
        fi
    done
done