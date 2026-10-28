@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Behaviors.Wpf\src"
popd
pause