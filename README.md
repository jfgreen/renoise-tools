# Renoise Tools

A collection of [Renoise](https://renoise.com) tools to speed up my day to day workflow.

## Developing

Requirements:

- Lua 5.1 (The Lua version used by Renoise 3.2)
- [Busted](http://olivinelabs.com/busted) for running tests
- [Luacheck](https://github.com/mpeterv/luacheck) for linting
- Bash, zip, [xmllint](http://xmlsoft.org/xmllint.html) for running tasks, packaging.

To get a working development environment using [Homebrew](https://brew.sh):

```
brew install lua@5.1 luarocks
luarocks --lua-version 5.1 install busted
luarocks --lua-version 5.1 install luacheck
```
### Running Tests

`./tasks test TOOL-DIR`

For example:

`./tasks test hello-world`

### Linting

`./tasks lint TOOL-DIR`

For example:

`./tasks lint hello-world`

### Packaging Tools

`./tasks package TOOL-DIR`

For example:

`./tasks package hello-world`
