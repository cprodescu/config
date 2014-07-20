REPO_URL="https://github.com/cprodescu/config.git"
REPO_DIR="$HOME/.my-config"

check_bin() {
    BINARY="$1"
    which "$BINARY" > /dev/null 2>&1 || {
        echo "No executable $BINARY"
        exit 1
    }
}

git_clone() {
    URL="$1"
    DESTINATION="$2"

    check_bin git

    rm -rf $DESTINATION
    echo -n " -> Cloning $URL ... "
    \git clone $URL $DESTINATION > /dev/null 2>&1
    echo "Done"
}

export_file() {
    SOURCE="$1"
    TARGET="$2"

    check_bin ln

    rm -f $TARGET
    echo -n " -> Linking $SOURCE -> $TARGET ... "
    ln -s `pwd`/$SOURCE $TARGET
    echo "Done"
}
