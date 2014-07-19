#!/bin/bash -e

export_file() {
    SOURCE="$1"
    TARGET="$2"

    rm -f $TARGET
    ln -s $(pwd)/$SOURCE $TARGET
}

for package in packages/*; do
    cd $package
    if [ -r init.sh ]; then
        echo "Installing $package"
        pwd
        . init.sh
    fi
    cd -
done
