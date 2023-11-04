@echo off
cd .\artifacts
echo|set /p="PACKAGE_LIST="> package_string.env
for %%f in (*zip) do (
    echo|set /p=".\artifacts\%%f|">> package_string.env
)
type package_string.env
cd ..

