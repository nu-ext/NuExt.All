Set-Location "$PSScriptRoot/.."

$dirs = Get-ChildItem -Recurse -Directory |
  Where-Object { $_.Name -in @('bin','obj','bin-legacy','obj-legacy') }

foreach ($d in $dirs) {
    Write-Host "Removing: $($d.FullName)"
    Remove-Item $d.FullName -Recurse -Force -ErrorAction SilentlyContinue
}

"Clean complete."