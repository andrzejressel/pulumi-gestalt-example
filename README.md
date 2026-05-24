## Pulumi Gestalt example

This is example for [Pulumi Gestalt](https://github.com/andrzejressel/pulumi-gestalt)


### Quick start

#### Requirements

- Pulumi

#### Running

Run following commants in `app` directory

```shell
pulumi plugin install language rust "0.0.12" --server github://api.github.com/andrzejressel/pulumi-gestalt

# Example stack
export PULUMI_CONFIG_PASSPHRASE=" " # For unix
$env:PULUMI_CONFIG_PASSPHRASE=" " # For Windows

pulumi stack init test
pulumi stack select test

pulumi up
```
