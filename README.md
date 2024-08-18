## Pulumi WASM example

This is example for [Pulumi WASM](https://github.com/andrzejressel/pulumi-wasm)


### Quick start

#### Requirements

- Pulumi
- [protoc](https://github.com/hyperium/tonic?tab=readme-ov-file#dependencies)
- [cargo-binstall](https://github.com/cargo-bins/cargo-binstall)
- [Just](https://github.com/casey/just)

#### Running

```shell
just install-requirenments # Installs pulumi-wasm pulumi plugin and pulumi-wasm-runner

# Example stack
export PULUMI_CONFIG_PASSPHRASE=" " # For unix
$env:PULUMI_CONFIG_PASSPHRASE=" " # For Windows

pulumi stack init test
pulumi stack select test

pulumi up
```
