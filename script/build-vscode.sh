#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# prepare
mkdir -p $DIR/../tmp
mkdir -p $DIR/../dist

# clone
cd $DIR/../tmp
git clone --depth=1 git@github.com:Microsoft/vscode vscode

# pull
cd $DIR/../tmp/vscode
git clean -fd
git checkout .
git pull --rebase

# npm install
cd $DIR/../tmp/vscode
yarn
yarn compile

# copy to dist
cd $DIR/..

cp -r ./tmp/vscode/extensions/css-language-features/server/out ./dist/css-language-server
npx babel ./dist/css-language-server --out-dir ./lib/css-language-server/

cp -r ./tmp/vscode/extensions/html-language-features/server/out ./dist/html-language-server
npx babel ./dist/html-language-server --out-dir ./lib/html-language-server/

cp -r ./tmp/vscode/extensions/json-language-features/server/out ./dist/json-language-server
npx babel ./dist/json-language-server --out-dir ./lib/json-language-server/

cp -r ./tmp/vscode/extensions/markdown-language-features/server/out ./dist/markdown-language-server
npx babel ./dist/markdown-language-server --out-dir ./lib/markdown-language-server/

