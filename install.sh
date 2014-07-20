#!/bin/bash -e

REPO_URL="https://github.com/cprodescu/config.git"
REPO_DIR="$HOME/.my-config"

rm -rf "$REPO_DIR"
\git clone "$REPO_URL" "$REPO_DIR"

cd "$REPO_DIR"
./init.sh
cd - > /dev/null
