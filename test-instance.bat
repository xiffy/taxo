@echo off
del .\nen_taxonomy_2024.zip
del .\iso_taxonomy_2024.zip
del .\jenv_taxonomy_2024.zip
del .\rj_taxonomy_2024.zip
del .\currency-CR-2023-08-23.zip
@REM del .\arelle-log.xml
del .\7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\nen_taxonomy_2024.zip .\nen_taxonomy_2024\ -aoa -tzip -bb3 > 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\iso_taxonomy_2024.zip .\iso_taxonomy_2024\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\jenv_taxonomy_2024.zip .\jenv_taxonomy_2024\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\rj_taxonomy_2024.zip .\rj_taxonomy_2024\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\currency-CR-2023-08-23.zip .\currency-CR-2023-08-23\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\Arelle\arelleCmdLine.exe" --packages ".\rj_taxonomy_2024.zip|.\jenv_taxonomy_2024.zip|.\nen_taxonomy_2024.zip|.\iso_taxonomy_2024.zip|.\currency-CR-2023-08-23.zip" --file "test.xbrl" -v
@REM --logFile arelle-log.xml