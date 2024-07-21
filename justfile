set windows-shell := ["pwsh.exe", "-c"]
binary := "pulumi_wasm_runner"
wasm := "target/wasm32-wasip1/debug/pulumi_wasm_example.wasm"

run:
    cargo component build
    {{binary}} run "{{wasm}}"

install-requirements:
    cargo install --locked cargo-component@0.14.0
    cargo install --index "sparse+https://cargo.cloudsmith.io/andrzej-ressel-github/pulumi-wasm/" --locked pulumi_wasm_runner@0.0.0-NIGHTLY-886e811

[windows]
local-test:
    #!pwsh
    Set-StrictMode -Version Latest
    $ErrorActionPreference = "Stop"
    $PSNativeCommandUseErrorActionPreference = $true

    $env:PULUMI_CONFIG_PASSPHRASE=" "
    pulumi destroy -y
    pulumi up -y