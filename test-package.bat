@echo off
del .\nen_taxonomy_2022.zip
del .\iso_taxonomy_2022.zip
del .\jenv_taxonomy_2022.zip
del .\rj_taxonomy_2022.zip
del .\currency-PWD-2023-06-21.zip
del .\arelle-log.xml
del .\7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\nen_taxonomy_2022.zip .\nen_taxonomy_2022\ -aoa -tzip -bb3 > 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\iso_taxonomy_2022.zip .\iso_taxonomy_2022\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\jenv_taxonomy_2022.zip .\jenv_taxonomy_2022\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\rj_taxonomy_2022.zip .\rj_taxonomy_2022\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\currency-PWD-2023-06-21.zip .\currency-PWD-2023-06-21\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\Arelle\arelleCmdLine.exe" --packages ".\rj_taxonomy_2022.zip|.\jenv_taxonomy_2022.zip|.\nen_taxonomy_2022.zip|.\iso_taxonomy_2022.zip|.\currency-PWD-2023-06-21.zip" --file "https://www.rjnet.nl/taxonomy/2023-06-30/rj_cor.xsd|https://www.nen.nl/taxonomy/2023-06-30/nen_1888_2002.xsd|https://www.nen.nl/taxonomy/2023-06-30/nen_5825_2002.xsd|https://www.iso.org/taxonomy/2023-06-30/iso_19160-4_2023.xsd" -v --logFile arelle-log.xml