set windows-shell := ["pwsh.exe", "-c"]
binary := "pulumi_gestalt_runner"
wasm := "target/wasm32-wasip1/debug/pulumi_gestalt_example.wasm"

run:
    cargo component build
    {{binary}} run --debug "{{wasm}}"

install-requirements:
    cargo binstall -y cargo-component@0.20.0
    cargo binstall -y --index "sparse+https://cargo.cloudsmith.io/andrzej-ressel-github/pulumi-gestalt/" pulumi_gestalt_runner@25.2.8-ad18c22
    pulumi plugin install language gestalt "25.2.8-ad18c22" --server github://api.github.com/andrzejressel/pulumi-gestalt-releases

[windows]
local-test:
    #!pwsh
    Set-StrictMode -Version Latest
    $ErrorActionPreference = "Stop"
    $PSNativeCommandUseErrorActionPreference = $true

    $env:PULUMI_CONFIG_PASSPHRASE=" "
    pulumi destroy -y
    pulumi up -y