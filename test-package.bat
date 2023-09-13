@echo off
del .\nen_taxonomy_2024.zip
del .\iso_taxonomy_2024.zip
del .\jenv_taxonomy_2024.zip
del .\rj_taxonomy_2024.zip
del .\currency-PWD-2023-06-21.zip
@REM del .\arelle-log.xml
del .\7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\nen_taxonomy_2024.zip .\nen_taxonomy_2024\ -aoa -tzip -bb3 > 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\iso_taxonomy_2024.zip .\iso_taxonomy_2024\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\jenv_taxonomy_2024.zip .\jenv_taxonomy_2024\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\rj_taxonomy_2024.zip .\rj_taxonomy_2024\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\currency-PWD-2023-06-21.zip .\currency-PWD-2023-06-21\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\Arelle\arelleCmdLine.exe" --packages ".\rj_taxonomy_2024.zip|.\jenv_taxonomy_2024.zip|.\nen_taxonomy_2024.zip|.\iso_taxonomy_2024.zip|.\currency-PWD-2023-06-21.zip" --file "https://www.rjnet.nl/taxonomy/2025-01-01/rj_cor.xsd|https://www.nen.nl/taxonomy/2025-01-01/nen_1888_2002.xsd|https://www.nen.nl/taxonomy/2025-01-01/nen_5825_2002.xsd|https://www.iso.org/taxonomy/2025-01-01/iso_19160-4_2023.xsd" -v
@REM --logFile arelle-log.xml