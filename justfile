set windows-shell := ["pwsh.exe", "-c"]
binary := "pulumi_wasm_runner"
wasm := "target/wasm32-wasip1/debug/pulumi_wasm_example.wasm"

run:
    cargo component build
    {{binary}} run "{{wasm}}"

install-requirements:
    cargo binstall cargo-component@0.14.0
    cargo binstall --index "sparse+https://cargo.cloudsmith.io/andrzej-ressel-github/pulumi-wasm/" pulumi_wasm_runner@0.0.0-NIGHTLY-c6cc48c
    pulumi plugin install language wasm "0.0.0-NIGHTLY-c6cc48c" --server github://api.github.com/andrzejressel/pulumi-wasm

[windows]
local-test:
    #!pwsh
    Set-StrictMode -Version Latest
    $ErrorActionPreference = "Stop"
    $PSNativeCommandUseErrorActionPreference = $true

    $env:PULUMI_CONFIG_PASSPHRASE=" "
    pulumi destroy -y
    pulumi up -y