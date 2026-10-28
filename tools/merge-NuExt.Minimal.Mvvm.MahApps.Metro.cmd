@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm.MahApps.Metro\src" --single
popd
pause