@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.System.Data\src" --single
popd
pause