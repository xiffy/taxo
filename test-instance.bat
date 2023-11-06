@echo off
setlocal enableDelayedExpansion
echo Building taxonomy-packages
call .\script\cicd\make-artifacts.bat
set /p TMP_LIST=<artifacts\package_list.env
@REM remove PACKAGE_LIST= from the string (github needs that)
set "LIST=%TMP_LIST:~13%"
echo Gathering test instances
call .\script\cicd\make-instancelist.bat
set /p TMP_LIST=<instances\instance_list.env
@REM remove INSTANCE_LIST= from the string (github needs that)
set "INSTANCE_LIST=%TMP_LIST:~14%"

echo testing instance
"C:\Program Files\Arelle\arelleCmdLine.exe" --packages "!LIST!" --file "!INSTANCE_LIST!" -v
@REM --logFile arelle-log.xml
