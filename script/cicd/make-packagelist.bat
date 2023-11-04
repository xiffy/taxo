@echo off
cd .\artifacts
echo|set /p="PACKAGE_LIST="> package_list.env
for %%f in (*zip) do (
    echo|set /p=".\artifacts\%%f|">> package_list.env
)
type package_list.env
cd ..

