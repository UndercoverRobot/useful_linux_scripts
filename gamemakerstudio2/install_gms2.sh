mkdir $HOME/gamemakerstudio2
WINEPREFIX=$HOME/.gamemakerstudio2 winetricks dotnet48
chmod +x ./GameMakerStudio-Installer.exe
WINEPREFIX=$HOME/.gamemakerstudio2 WINEARCH="win64" wine64 ./GameMakerStudio-Installer.exe
cp ./run_gms2.sh $HOME/.gamemakerstudio2
cp ./gms_icon.png $HOME/.gamemakerstudio2
cp ./gms2.desktop $HOME/.local/share/applications/
echo "Icon="$HOME"/.gamemakerstudio2/gms_icon.png" >> $HOME/.local/share/applications/gms2.desktop
echo "Exec="$HOME"/.gamemakerstudio2/run_gms2.sh" >> $HOME/.local/share/applications/gms2.desktop
chmod +x $HOME/.gamemakerstudio2/run_gms2.sh
rm $HOME/.local/share/applications/wine/Programs/GameMaker\ Studio\ 2/Uninstall.desktop
rm $HOME/.local/share/applications/wine/Programs/GameMaker\ Studio\ 2/GameMaker\ Studio\ 2\ License.desktop
rm $HOME/.local/share/applications/wine/Programs/GameMaker\ Studio\ 2/GameMaker\ Studio\ 2.desktop
