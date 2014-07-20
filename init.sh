#!/bin/bash -e

. vars.sh

for package in packages/*; do
    cd $package
    if [ -r init.sh ]; then
        echo "Installing $package ..."
        . init.sh
    fi
    cd - > /dev/null
done
echo "Done."
