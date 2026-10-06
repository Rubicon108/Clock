$ErrorActionPreference = 'Stop'
$exe = Join-Path $PSScriptRoot 'Ritmo.exe'
if (-not (Test-Path -LiteralPath $exe)) {
    Write-Host 'Ritmo.exe non esiste. Esegui prima: .\build.ps1'
    exit 2
}
Start-Process -FilePath $exe -WorkingDirectory $PSScriptRoot
