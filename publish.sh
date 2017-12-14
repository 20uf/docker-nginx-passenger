#!/bin/bash

# for returning later to the main directory
ROOT_DIRECTORY=./

# read repository configuration
source $ROOT_DIRECTORY/vars

# build all enabled versions
for VERSION in $NODE_VERSIONS; do
    echo $'\n\n'"--> Publishing $NAMESPACE:node-$VERSION"$'\n'

    if [ -d "$ROOT_DIRECTORY/image/" ]; then
        docker push $NAMESPACE:node-$VERSION
    fi
done