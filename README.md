# Renoise Tools

A collection of [Renoise](https://renoise.com) tools to speed up my day to day workflow.

## Developing

Requirements:

- Lua 5.1 (The Lua version used by Renoise 3.2)
- [Busted](http://olivinelabs.com/busted) for running tests
- Bash, zip, [xmllint](http://xmlsoft.org/xmllint.html) for running tasks, packaging.

To get a working development environment using [Homebrew](https://brew.sh):

```
brew install lua@5.1 luarocks
luarocks --lua-version 5.1 install busted
```

### Running Tests

`./tasks test TOOL-DIR`

For example:

`./tasks test hello-world`

### Packaging Tools

`./tasks package TOOL-DIR`

For example:

`./tasks package hello-world`
