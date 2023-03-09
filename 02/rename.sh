#!/bin/bash
APP_NAME="rails_template"
function print_usage() {
    echo "usage: ./rename.sh name"
}

if [ $# != 1 ]; then
    echo "Invalid argument."
    print_usage
    exit 1
fi

echo -n "Do you want to rename? [${APP_NAME}] -> [$1] (y/N):"
read ANS
case $ANS in
    [Yy]* )
        grep -rl ${APP_NAME} . | grep -v rename.sh | xargs sed -i '' "s/${APP_NAME}/$1/g"
        echo "Complete!!!"
        ;;
esac
