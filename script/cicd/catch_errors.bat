@echo off
setlocal enableDelayedExpansion
for %%f in (arelle-taxo.log) do set "SIZE=%%~zf"
if "!SIZE!" NEQ "0" (
  type arelle-taxo.log
  exit /b 1
) else (
  echo "Goed hoor"
)
