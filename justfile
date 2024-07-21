set windows-shell := ["pwsh.exe", "-c"]
binary := "pulumi_wasm_runner"
wasm := "target/wasm32-wasip1/debug/pulumi_wasm_example.wasm"

run:
    cargo component build
    {{binary}} run "{{wasm}}"

[windows]
local-test:
    #!pwsh
    Set-StrictMode -Version Latest
    $ErrorActionPreference = "Stop"
    $PSNativeCommandUseErrorActionPreference = $true

    $env:PULUMI_CONFIG_PASSPHRASE=" "
    pulumi destroy -y
    pulumi up -y