@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.System.Data.SQLite\tests" --single
popd
pause