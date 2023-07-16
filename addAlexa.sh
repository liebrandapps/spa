[ -d ./WiFi-remote-for-Bestway-Lay-Z-SPA ] && rm -r WiFi-remote-for-Bestway-Lay-Z-SPA
[ -d ./fauxmoESP ] && rm -r fauxmoESP
git clone https://github.com/vintlabs/fauxmoESP.git
git clone https://github.com/visualapproach/WiFi-remote-for-Bestway-Lay-Z-SPA.git
cd WiFi-remote-for-Bestway-Lay-Z-SPA
git checkout f9bc945089aa7423dfab254ec7958aef355861f1
cd ..
cd ./fauxmoESP
t checkout 0b3aee19eac2797ac125aaab50b78a2a52e6ecf6
cd ..
mkdir -p ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/lib/fauxmoESP
cp ./fauxmoESP/src/* ./WiFi-remote-for-Bestway-Lay-Z-SPA/Code/lib/fauxmoESP
