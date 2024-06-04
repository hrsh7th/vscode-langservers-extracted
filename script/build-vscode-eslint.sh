#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Latest stable release for vscode-eslint is 2.4.4
# https://github.com/microsoft/vscode-eslint/tags
RELEASE_TAG="release/2.4.4"

# prepare
mkdir -p $DIR/../tmp
mkdir -p $DIR/../dist

# clone
cd $DIR/../tmp
git clone git@github.com:Microsoft/vscode-eslint vscode-eslint

# pull
cd $DIR/../tmp/vscode-eslint
git clean -fd
git checkout tags/$RELEASE_TAG

# npm install
cd $DIR/../tmp/vscode-eslint
yarn --ignore-scripts
yarn
yarn compile

# copy to dist
cd $DIR/..

mkdir -p ./dist/eslint-language-server
cp -r ./tmp/vscode-eslint/server/out/* ./dist/eslint-language-server/
npx babel ./dist/eslint-language-server --out-dir ./lib/eslint-language-server/

