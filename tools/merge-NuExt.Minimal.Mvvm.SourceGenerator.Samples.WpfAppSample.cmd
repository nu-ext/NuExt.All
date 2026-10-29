@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm.SourceGenerator\samples\WpfAppSample" --single
popd
pause