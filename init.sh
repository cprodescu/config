#!/bin/bash -e

for package in packages/*; do
    cd $package
    if [ -r init.sh ]; then
        echo "Installing $package"
        pwd
        sh init.sh
    fi
    cd -
done
