@echo OFF
echo:Make sure your vanilla ark files are in _build/gc/files/gen/
del "%~dp0\_build\gc\files\gen\main.hdr"
del "%~dp0\_build\gc\files\gen\main_1.ark"
xcopy "%~dp0\dependencies\_rebuild_files\gc\main.hdr" "%~dp0\_build\gc\files\gen" >nul
echo:Building Karaoke Revolution Party Deluxe patch arks.
echo:The "Unhandled exception" below is expected, and does not indicate failure.
"%~dp0dependencies/arkhelper" patchcreator -a "%~dp0\_ark" -o "%~dp0\_build\gc\files" "%~dp0\_build\gc\files\gen\main.hdr" >nul
echo:Wrote Karaoke Revolution Party Deluxe patch arks.
echo:Complete. Karaoke Revolution Party Deluxe
pause