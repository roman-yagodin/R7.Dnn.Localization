#!/bin/bash

if [ ! $1 ]; then
    echo "Error: Specify package name as an argument."
    exit
fi

# configs
source common.config
source $PACKAGE_CONFIG

# TODO: Add confirmation prompt

pushd . > /dev/null
cd $PACKAGE_NAME

tx push --translations --force --no-interactive --skip

popd > /dev/null