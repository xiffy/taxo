@echo off
setlocal enableDelayedExpansion
echo Building taxonomy-packages
call .\script\cicd\make-artifacts.bat

echo Creating package list & read into LIST
call .\script\cicd\make-packagelist.bat
set /p TMP_LIST=<artifacts\package_list.env
set "LIST=%TMP_LIST:~13%"

echo calling Arelle
.\script\arelle\arelleCmdLine.exe -v --packages "!LIST!" --file "https://www.rjnet.nl/taxonomy/2025-01-01/rj_cor.xsd|https://www.nen.nl/taxonomy/2025-01-01/nen_1888_2002.xsd|https://www.nen.nl/taxonomy/2025-01-01/nen_5825_2002.xsd|https://www.iso.org/taxonomy/2025-01-01/iso_19160-4_2023.xsd" -v

