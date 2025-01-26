set windows-shell := ["pwsh.exe", "-c"]
binary := "pulumi_wasm_runner"
wasm := "target/wasm32-wasip1/debug/pulumi_wasm_example.wasm"

run:
    cargo component build
    {{binary}} run --debug "{{wasm}}"

install-requirements:
    cargo binstall -y cargo-component@0.20.0
    cargo binstall -y --index "sparse+https://cargo.cloudsmith.io/andrzej-ressel-github/pulumi-wasm/" pulumi_wasm_runner@25.1.26-43c20fc
    pulumi plugin install language wasm "25.1.26-43c20fc" --server github://api.github.com/andrzejressel/pulumi-wasm-releases

[windows]
local-test:
    #!pwsh
    Set-StrictMode -Version Latest
    $ErrorActionPreference = "Stop"
    $PSNativeCommandUseErrorActionPreference = $true

    $env:PULUMI_CONFIG_PASSPHRASE=" "
    pulumi destroy -y
    pulumi up -y