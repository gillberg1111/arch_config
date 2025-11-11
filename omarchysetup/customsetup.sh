#!/bin/sh

#Remove pre-installed apps 
chmod +x removeapps.sh
. ./removeapps.sh

#Run install scrips
chmod +x ./fish/installfish.sh
. ./fish/installfish.sh 

chmod +x ./zsh/installzsh.sh
. ./zsh/installzsh.sh

chmod +x ./ghostty/installghostty.sh
. ./ghostty/installghostty.sh

chmod +x ./brave/installbrave.sh
. ./brave/installbrave.sh

chmod +x ./bambulabs/installbambustudio.sh
. ./bambulabs/installbambustudio.sh 

chmod +x ./proton/installprotonpass.sh 
chmod +x ./proton/installprotonvpn.sh
. ./proton/installprotonpass.sh
. ./proton/installprotonvpn.sh

~/.local/share/omarchy/bin/omarchy-theme-set Dracula

if [ -d ~/Notes ]; then
    echo "Notes directory already exits" 
else
  mkdir ~/Notes
fi

#Move configs
cp ./bash/bashrc ~/.bashrc
cp ./ghostty/config ~/.config/ghostty/config
cp ./fish/config.fish ~/.config/fish/config.fish
cp ./waybar/config.jsonc ~/.config/waybar/config.jsonc
cp ./starship/starship.toml ~/.config/starship.toml
cp ./bindings.conf ~/.config/hypr/bindings.conf

exit 0
