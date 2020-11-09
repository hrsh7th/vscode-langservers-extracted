# vscode-langservers-extracted

HTML/CSS/JSON language servers extracted from [vscode](https://github.com/Microsoft/vscode).


# Why?

- Microsoft provided awesome Language Servers for the community but it didn't update for a long time.
- Currently, the latest css-language-server is improved a bit than `vscode-css-langserver-bin`.


# Usage

You can install this via `npm i -g vscode-langservers-extracted`.

After that, you get `vscode-html-language-server`, `vscode-css-language-server` and `vscode-json-language-server` for the $PATH.


# Build

### Requirements

You should install yarn for the building vscode.


### Commands

- `npm i -g yarn`
- yarn install
- yarn build
- npm run release


# LICENSE

This package licensed under the MIT.

See the [LICENSE](./LICENSE)


# THIRD-PARTY LICENSE 

- This package uses https://github.com/Microsoft/vscode for the building.
  - https://github.com/microsoft/vscode/blob/master/LICENSE.txt

