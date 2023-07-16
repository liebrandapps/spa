[ -d ./WiFi-remote-for-Bestway-Lay-Z-SPA ] && rm -r WiFi-remote-for-Bestway-Lay-Z-SPA
[ -d ./fauxmoESP ] && rm -r fauxmoESP
git clone https://github.com/vintlabs/fauxmoESP.git
git clone https://github.com/visualapproach/WiFi-remote-for-Bestway-Lay-Z-SPA.git
cd WiFi-remote-for-Bestway-Lay-Z-SPA
git checkout f9bc945089aa7423dfab254ec7958aef355861f1
cd ..
cd ./fauxmoESP
git checkout 0b3aee19eac2797ac125aaab50b78a2a52e6ecf6
cd ..
echo "ADDING fauxmoESP to WIFI-remote"
mkdir -p ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/lib/fauxmoESP
cp ./fauxmoESP/src/* ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/lib/fauxmoESP
echo "Patching fauxmoESP.cpp"
patch ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/lib/fauxmoESP/fauxmoESP.cpp ./fauxmoESP.cpp.patch
echo "Patching fauxmoESP.h"
patch ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/lib/fauxmoESP/fauxmoESP.h ./fauxmoESP.h.patch
echo "Patching main.cpp"
patch ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/src/main.cpp ./main.cpp.patch
echo "Patching main.h"
patch ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/src/main.h ./main.h.patch
