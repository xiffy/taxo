@echo off
setlocal enableDelayedExpansion
dir
for %%f in (%1) do set "SIZE=%%~zf"
if "%SIZE%" NEQ "0" (
  type %1
  set /p LOG=<%1
  echo !LOG! >&2
  exit /b 1
) else (
  echo Arelle says: All good! (no warnings or errors^)
)
