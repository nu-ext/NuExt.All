@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.System.Data.SQLite\samples\MoviesAppSample" "" --single
popd
pause