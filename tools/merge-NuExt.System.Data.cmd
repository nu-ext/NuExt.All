@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.System.Data\src" ".cs" --single
popd
pause