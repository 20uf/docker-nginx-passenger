#!/bin/bash

# for returning later to the main directory
ROOT_DIRECTORY=./

# read repository configuration
source $ROOT_DIRECTORY/vars

for VERSION in $NODE_VERSIONS; do
    for NAMESPACE in $NAMESPACES; do
        echo $'\n\n'"--> Publishing dockernodejs/passenger:$NAMESPACE-node-$VERSION"$'\n'

        if [ -d "$ROOT_DIRECTORY/image/$NAMESPACE" ]; then
            docker push dockernodejs/passenger:$NAMESPACE-node-$VERSION
        fi
    done
done