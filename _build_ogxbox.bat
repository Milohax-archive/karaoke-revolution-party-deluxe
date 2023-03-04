git pull https://github.com/hmxmilohax/karaoke-revolution-party-deluxe main
@echo OFF
echo:Make sure your vanilla ark files are in _build/ogxbox/gen/
del "%~dp0\_build\ogxbox\gen\main.hdr"
del "%~dp0\_build\ogxbox\gen\main_20.ark"
xcopy "%~dp0\dependencies\_rebuild_files\ogxbox\main.hdr" "%~dp0\_build\ogxbox\gen" >nul
echo:Building Karaoke Revolution Party Deluxe patch arks.
echo:The "Unhandled exception" below is expected, and does not indicate failure.
"%~dp0dependencies/arkhelper" patchcreator -a "%~dp0\_ark" -o "%~dp0\_build\ogxbox" "%~dp0\_build\ogxbox\gen\main.hdr" >nul
echo:Wrote Karaoke Revolution Party Deluxe patch arks.
echo:Complete. Enjoy Karaoke Revolution Party Deluxe
pause