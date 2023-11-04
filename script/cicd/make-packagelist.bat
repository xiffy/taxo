@echo off
setlocal enableDelayedExpansion
cd .\artifacts
del _list.env
set LIST=
for %%f in (*zip) do (
    echo|set /p=".\artifacts\%%f|">> _list.env
)
echo|set /p="PACKAGE_LIST="> package_list.env
set /p LIST=<_list.env
set "LIST=%LIST:~0,-1%"
echo|set /p="%LIST%">>package_list.env

