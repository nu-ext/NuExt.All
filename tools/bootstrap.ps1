Write-Host "Initializing submodules..." -ForegroundColor Cyan

git submodule init
git submodule update --recursive

git submodule foreach --recursive "git checkout main"
git submodule foreach --recursive "git pull"

Write-Host "Done." -ForegroundColor Green