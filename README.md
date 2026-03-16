## Pulumi Gestalt example

This is example for [Pulumi Gestalt](https://github.com/andrzejressel/pulumi-gestalt)


### Quick start

#### Requirements

- Pulumi
- [Just](https://github.com/casey/just)

#### Running

Run following commants in `app` directory

```shell
just install-requirements # Installs pulumi-wasm pulumi plugin and pulumi-wasm-runner

# Example stack
export PULUMI_CONFIG_PASSPHRASE=" " # For unix
$env:PULUMI_CONFIG_PASSPHRASE=" " # For Windows

pulumi stack init test
pulumi stack select test

pulumi up
```
