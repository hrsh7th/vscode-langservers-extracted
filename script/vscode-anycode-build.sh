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
npm i -D gulp gulp-cli
yarn
yarn compile

# copy to dist
cd $DIR/..
mkdir -p ./dist/anycode-language-server
mkdir -p ./dist/anycode-language-server/server
cp -r ./tmp/vscode-anycode/dist/anycode.server.js ./dist/anycode-language-server/anycode.server.js
cp -r ./tmp/vscode-anycode/server/tree-sitter ./dist/anycode-language-server/server/tree-sitter
cp -r ./tmp/vscode-anycode/server/tree-sitter-*.wasm ./dist/anycode-language-server/server

