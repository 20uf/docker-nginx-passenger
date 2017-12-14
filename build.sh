#!/bin/bash

# for returning later to the main directory
ROOT_DIRECTORY=./

# read repository configuration
source $ROOT_DIRECTORY/vars

# build all enabled versions
for VERSION in $NODE_VERSIONS; do
    echo $'\n\n'"--> Building $NAMESPACE:node-$VERSION"$'\n'

    if [ -d "$ROOT_DIRECTORY/image/" ]; then
        docker build --no-cache --compress -q -t $NAMESPACE:node-$VERSION --build-arg NODE_VERSION=$VERSION -f $ROOT_DIRECTORY/image/Dockerfile .
    fi
done