@echo off
setlocal enableDelayedExpansion
cd .\taxonomies
set LIST=

for /d %%d in (*) do (
  for %%f  in (%%d\META-INF\t*xml) do (
    rem find the entrypointname(s) in the taxonomyPackage.xml
    find /i "tp:entryPointDocument" < %%f > _tmp
    rem read the file -line by line
    for /f "tokens=*" %%l in (_tmp) do (
      rem splitsen op een dubbele quote is not so easy
      for /f tokens^=2^ delims^=^" %%h in ("%%l") do (
        set VAR=%%h
        echo -!VAR!-
      )
    )
    del _tmp
    rem find /i "tp:entryPointDocument" < %%f"
  )
)

