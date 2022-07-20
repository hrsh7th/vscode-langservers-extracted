#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

npm i -g gulp-cli

cd $DIR
source $DIR/build-vscode.sh
source $DIR/build-vscode-eslint.sh
source $DIR/build-vscode-anycode.sh

