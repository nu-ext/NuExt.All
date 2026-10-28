@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Presentation.Wpf\src" --single
popd
pause