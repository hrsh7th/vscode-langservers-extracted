#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# prepare
mkdir -p $DIR/../tmp
mkdir -p $DIR/../dist

# clone
cd $DIR/../tmp
git clone --depth=1 git@github.com:Microsoft/vscode-anycode vscode-anycode

# pull
cd $DIR/../tmp/vscode-anycode
git clean -fd
git checkout .
git pull --rebase

# npm install
cd $DIR/../tmp/vscode-anycode
node ./scripts/all-npm.js install

# copy to dist
# cd $DIR/..
# cp -r ./tmp/vscode-anycode/anycode/dist ./dist/anycode-language-server
# npx babel ./dist/anycode-language-server --out-dir ./lib/anycode-language-server/

