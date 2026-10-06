$ErrorActionPreference = 'Stop'
$compilerCandidates = @(
    "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\csc.exe",
    "$env:WINDIR\Microsoft.NET\Framework\v4.0.30319\csc.exe"
)
$compiler = $compilerCandidates | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
if (-not $compiler) { throw 'Non trovo il compilatore C# di .NET Framework. Installa .NET Framework 4.x Developer Pack.' }
$source = Join-Path $PSScriptRoot 'RitmoNative.cs'
$output = Join-Path $PSScriptRoot 'Ritmo.exe'
& $compiler /nologo /target:winexe /codepage:65001 /reference:System.Windows.Forms.dll /reference:System.Drawing.dll /reference:System.Web.Extensions.dll "/out:$output" $source
if ($LASTEXITCODE -ne 0) { throw "Compilazione fallita (codice $LASTEXITCODE)." }
Write-Host "Creato: $output"
