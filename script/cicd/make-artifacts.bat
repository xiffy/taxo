@echo OFF
echo Creating taxonomy packages of all taxonomies.
echo --back in a sec
cd taxonomies
echo cd
cd
for /d %%d in (*) do (
    del ..\artifacts\%%d.zip
    ..\script\7zip\7z.exe a ..\artifacts\%%d.zip %%d -aoa -tzip -bb3
)
cd ..
