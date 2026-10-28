@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm.Wpf\src" --folder
popd
pause