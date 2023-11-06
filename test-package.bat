@echo off
setlocal enableDelayedExpansion
echo Building taxonomy-packages
call .\script\cicd\make-artifacts.bat

echo Creating package list and read into PACKAGE_LIST
call .\script\cicd\make-packagelist.bat
set /p TMP_LIST=<artifacts\package_list.env
set "PACKAGE_LIST=%TMP_LIST:~13%"

echo Creating entrypoint list and read into ENTRYPOINT_LIST
call .\script\cicd\make-entrypointlist.bat
set /p TMP_LIST=<taxonomies\entrypoint_list.env
set "ENTRYPOINT_LIST=%TMP_LIST:~13%"

echo calling Arelle
.\script\arelle\arelleCmdLine.exe -v --packages "!PACKAGE_LIST!" --file="!ENTRYPOINT_LIST!" -v
rem "https://www.rjnet.nl/taxonomy/2025-01-01/rj_cor.xsd|
rem https://www.nen.nl/taxonomy/2025-01-01/nen_1888_2002.xsd|
rem https://www.nen.nl/taxonomy/2025-01-01/nen_5825_2002.xsd|
rem https://www.iso.org/taxonomy/2025-01-01/iso_19160-4_2023.xsd"
