@echo off
setlocal enableDelayedExpansion
for %%f in (%1) do set "SIZE=%%~zf"
if "!SIZE!" NEQ "0" (
  type arelle-taxo.log
  exit /b 1
) else (
  echo Arelle says: All good! (no warnings or errors^)
)
