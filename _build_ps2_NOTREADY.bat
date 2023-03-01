git pull https://github.com/hmxmilohax/karaoke-revolution-party-deluxe main
@echo OFF
echo:Make sure your vanilla ark files are in _build/ps2/GEN/
del "%~dp0\_build\ps2\GEN\MAIN.HDR"
del "%~dp0\_build\ps2\GEN\MAIN_1.ARK"
xcopy "%~dp0\dependencies\_rebuild_files\ps2\MAIN.HDR" "%~dp0\_build\ps2\GEN" >nul
echo:Building Karaoke Revolution Party Deluxe patch arks.
echo:The "Unhandled exception" below is expected, and does not indicate failure.
"%~dp0dependencies/arkhelper" patchcreator -a "%~dp0\_ark" -o "%~dp0\_build\ps2" "%~dp0\_build\ps2\GEN\MAIN.HDR" >nul
echo:Wrote Karaoke Revolution Party Deluxe patch arks.
echo:Complete. Enjoy Karaoke Revolution Party Deluxe
pause