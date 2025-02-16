## Pulumi Gestalt example

This is example for [Pulumi Gestalt](https://github.com/andrzejressel/pulumi-gestalt)


### Quick start

#### Requirements

- Pulumi
- [cargo-binstall](https://github.com/cargo-bins/cargo-binstall)
- [Just](https://github.com/casey/just)

#### Running

Select either `native` or `wasm` and open terminal in respective directory. If unsure select `native`.

```shell
just install-requirenments # Installs pulumi-wasm pulumi plugin and pulumi-wasm-runner

# Example stack
export PULUMI_CONFIG_PASSPHRASE=" " # For unix
$env:PULUMI_CONFIG_PASSPHRASE=" " # For Windows

pulumi stack init test
pulumi stack select test

pulumi up
```
