#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# prepare
mkdir -p $DIR/../tmp
mkdir -p $DIR/../dist

# clone
cd $DIR/../tmp
git clone --depth=1 git@github.com:Microsoft/vscode-eslint vscode-eslint

# pull
cd $DIR/../tmp/vscode-eslint
git clean -fd
git checkout .
git pull --rebase

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

