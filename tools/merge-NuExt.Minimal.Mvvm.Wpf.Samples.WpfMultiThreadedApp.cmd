@echo off
pushd "%~dp0"
dotnet nuext-merge "..\NuExt.Minimal.Mvvm.Wpf\samples\WpfMultiThreadedApp" --single
popd
pause