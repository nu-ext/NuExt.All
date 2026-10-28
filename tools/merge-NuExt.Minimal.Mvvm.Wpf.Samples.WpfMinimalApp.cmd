@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm.Wpf\samples\WpfMinimalApp" --single
popd
pause