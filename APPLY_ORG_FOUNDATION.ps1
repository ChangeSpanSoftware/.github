$ErrorActionPreference = "Stop"

$source = Split-Path -Parent $MyInvocation.MyCommand.Path
$target = Join-Path $env:USERPROFILE "ChangeSpanPlatform\org-defaults"
$remote = "https://github.com/ChangeSpanSoftware/.github.git"

if (-not (Test-Path -LiteralPath $target)) {
    git clone $remote $target
    if ($LASTEXITCODE -ne 0) { throw "Unable to clone the .github repository." }
}

Get-ChildItem -LiteralPath $source -Force |
    Where-Object { $_.Name -notin @("APPLY_ORG_FOUNDATION.ps1") } |
    ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination $target -Recurse -Force
    }

Push-Location $target
try {
    git add .
    git commit -m "Establish ChangeSpanSoftware organization standards"
    if ($LASTEXITCODE -notin @(0, 1)) { throw "Commit failed." }
    git push origin main
    if ($LASTEXITCODE -ne 0) { throw "Push failed." }
}
finally {
    Pop-Location
}

Write-Host "Organization foundation applied to $target" -ForegroundColor Green
