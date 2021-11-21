# vscode-langservers-extracted

HTML/CSS/JSON language servers extracted from [vscode](https://github.com/Microsoft/vscode).


# Why?

- Microsoft provided awesome Language Servers for the community but it didn't update for a long time.
- Currently, the latest css-language-server is improved a bit than `vscode-css-langserver-bin`.


# Usage

You can install this via `npm i -g vscode-langservers-extracted`.

After that, you get the following commands.

- `vscode-html-language-server`
- `vscode-css-language-server`
- `vscode-json-language-server`
- `vscode-eslint-language-server`


# Build

### Requirements

You should install yarn for the building vscode.


### Commands

- `npm i -g yarn`
- yarn
- ./script/build.sh
- node ./script/depcheck.js
- npm run release


### Installation and setup for windows user

1. Please install [node](https://nodejs.org/en/)
2. Check the version of node and npm by `node -v` and `npm -v`.
3. Paste this command in the command line `npm i -g vscode-langservers-extracted`
4. Create file for your lspconfig
5. Paste this into your config
```
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require'lspconfig'.cssls.setup {
  cmd = { "vscode-css-language-server.cmd", "--stdio" },
  capabilities = capabilities,
}
```
> Example for css


# LICENSE

This package licensed under the MIT.

See the [LICENSE](./LICENSE)


# THIRD-PARTY LICENSE 

- https://github.com/Microsoft/vscode
  - https://github.com/microsoft/vscode/blob/main/LICENSE.txt
- https://github.com/Microsoft/vscode-eslint
  - https://github.com/microsoft/vscode-eslint/blob/master/License.txt
- https://github.com/Microsoft/vscode-anycode
  - https://github.com/microsoft/vscode-anycode/blob/master/LICENSE

# Known issues

This package contains `vscode-anycode` extension. But it's only for browsers at the moment. So it doesn't work now.

