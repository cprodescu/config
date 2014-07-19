#!/bin/bash -e

REPO_URL="https://github.com/cprodescu/config.git"
export REPO_DIR="$HOME/.my-config"

check_bin() {
    BINARY="$1"
    which "$BINARY" > /dev/null 2>&1 || {
        echo "No executable $BINARY"
        exit 1
    }
}

check_bin git

rm -rf $REPO_DIR
\git clone $REPO_URL $REPO_DIR

cd $REPO_DIR
./init.sh
cd -
