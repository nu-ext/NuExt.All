@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Tools\src\NuExt.Tools.ProjectMerger" --single
popd
pause