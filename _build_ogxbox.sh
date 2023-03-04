#!/usr/bin/bash
printf "Make sure your vanilla ark files are in _build/ogxbox/gen/\n"
rm ./_build/ogxbox/gen/main.hdr
rm ./_build/ogxbox/gen/main_20.ark
cp ./dependencies/_rebuild_files/ogxbox/main.hdr ./_build/ogxbox/gen/main.hdr
printf "Building Karaoke Revolution Party Deluxe patch arks.\n"
printf "The \"Unhandled exception\" below is expected, and does not indicate failure.\n"
chmod +x ./dependencies/arkhelper
chmod +x ./dependencies/dtab
./dependencies/arkhelper patchcreator -a _ark -o _build/ogxbox _build/ogxbox/gen/main.hdr >/dev/null
printf "Wrote Karaoke Revolution Party Deluxe patch arks.\n"
printf "Complete. Enjoy Karaoke Revolution Party Deluxe\n"
