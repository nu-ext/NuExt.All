@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm.MahApps.Metro\samples\MetroWpfApp" --single
popd
pause