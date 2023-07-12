@echo off
del .\jenv_taxonomy_2022.zip
del .\rj_taxonomy_2022.zip
del .\arelle-log.xml
del .\7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\jenv_taxonomy_2022.zip .\jenv_taxonomy_2022\ -aoa -tzip -bb3 > 7zip-log.txt
"C:\Program Files\7-Zip\7z.exe" a .\rj_taxonomy_2022.zip .\rj_taxonomy_2022\ -aoa -tzip -bb3 >> 7zip-log.txt
"C:\Program Files\Arelle\arelleCmdLine.exe" --packages ".\rj_taxonomy_2022.zip|.\jenv_taxonomy_2022.zip" -f https://www.rjnet.nl/taxonomy/2023-06-30/rj_cor.xsd -v --logFile arelle-log.xml