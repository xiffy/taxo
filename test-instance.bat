@echo off
setlocal enableDelayedExpansion
echo Building taxonomy-packages
call .\script\cicd\make-artifacts.bat
set /p TMP_LIST=<artifacts\package_list.env
set "LIST=%TMP_LIST:~13%"

echo testing instance
"C:\Program Files\Arelle\arelleCmdLine.exe" --packages "!LIST!" --file "instances/test.xbrl" -v
@REM --logFile arelle-log.xml
