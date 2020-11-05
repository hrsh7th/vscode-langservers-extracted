const path = require('path');
const execSync = require('child_process').execSync;

const deps = {};

[
  './css-language-features/server/package.json',
  './html-language-features/server/package.json',
  './json-language-features/server/package.json',
].forEach(name => {
  const fullPath = path.resolve(__dirname, '../tmp/vscode/extensions', name);
  const packageJSON = require(fullPath);
  Object.entries(packageJSON.dependencies).map(([name, version]) => {
    if (!deps[name]) {
      deps[name] = [];
    }
    if (deps[name].indexOf(version) == -1) {
      deps[name].push(version);
    }
  });
})

Object.entries(deps).forEach(([name, versions]) => {
  if (versions.length != 1) {
    console.error(`${name} has multiple versions (${versions}).`);
  }
  execSync('npm i -S ' + name + '@' + versions[0], {
    cwd: path.resolve(__dirname, '../'),
    stdio: 'inherit'
  });
});

