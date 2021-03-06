#!/bin/bash

# configs
source common.config

if [ ! $1 ]; then
    echo "Error: Specify package name as an argument."
    exit
fi

if [ ! -d "$DISTRO_DIR" ]; then
    echo "Error: Distribution directory '$DISTRO_DIR' does not exist."
    exit
fi

if [ ! -d "$PACKAGE_NAME" ]; then
    echo "Creating '$PACKAGE_NAME' package directory."
    mkdir $PACKAGE_NAME
else
    echo "Package directory '$PACKAGE_NAME' already exists."
fi
    
if [ ! -f "$PACKAGE_CONFIG" ]; then
    echo "Copy default config to the package directory."
    echo "Please edit '$PACKAGE_CONFIG' manually to make package-specific changes."
    cp "package.config.default" "$PACKAGE_CONFIG"
else
    echo "Package config file '$PACKAGE_CONFIG' already exists."
fi
