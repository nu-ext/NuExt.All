@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm\src" --folder
popd
pause