@echo off
setlocal enableDelayedExpansion
for %%f in (arelle.log) do set "SIZE=%%~zf"
if "!SIZE!" NEQ "0" (
  type arelle.log
  exit /b 1
) else (
  echo "Goed hoor"
)
