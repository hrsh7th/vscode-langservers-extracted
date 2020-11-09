# vscode-langservers-extracted

HTML/CSS/JSON language servers extracted from [vscode](https://github.com/Microsoft/vscode).


# Why?

- Microsoft provided awesome Language Servers for the community but it didn't update for a long time.
- Currently, the latest css-language-server is improved a bit than `vscode-css-langserver-bin`.


# Usage

You can install this via `npm i -g vscode-langservers-extracted`.

After that, you get `html-language-server`, `css-language-server` and `json-language-server` for the $PATH.


# Requirements
You should install yarn for the building vscode.

- `npm i -g yarn`

# Build
- yarn install
- yarn build
- npm publish


# LICENSE

This package licensed under the MIT.

See the [LICENSE](./LICENSE)


# THIRD-PARTY LICENSE 

- This package uses https://github.com/Microsoft/vscode for the building.
  - https://github.com/microsoft/vscode/blob/master/LICENSE.txt

