@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm.SourceGenerator\src" --single
popd
pause