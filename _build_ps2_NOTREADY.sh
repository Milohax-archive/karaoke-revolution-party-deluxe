#!/usr/bin/bash
printf "Make sure your vanilla ark files are in _build/ps2/GEN/\n"
rm ./_build/ps2/GEN/MAIN.HDR
rm ./_build/ps2/GEN/MAIN_1.ARK
cp ./dependencies/_rebuild_files/ps2/main.hdr ./_build/ps2/GEN/MAIN.HDR
printf "Building Karaoke Revolution Party Deluxe patch arks.\n"
printf "The \"Unhandled exception\" below is expected, and does not indicate failure.\n"
chmod +x ./dependencies/arkhelper
chmod +x ./dependencies/dtab
./dependencies/arkhelper patchcreator -a _ark -o _build/ps2 _build/ps2/GEN/MAIN.HDR >/dev/null
printf "Wrote Karaoke Revolution Party Deluxe patch arks.\n"
printf "Complete. Enjoy Karaoke Revolution Party Deluxe\n"
