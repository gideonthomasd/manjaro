#!/bin/bash

#if [ ! -d /usr/share/xsessions ]
#then
#sudo mkdir -p /usr/share/xsessions
#fi

############ Make sh executable #######################  padsp mocp ####### (if needed) ######################
#cd leftwm
#chmod +x *.toml
#cd themes
#cd greyblocks
#chmod +x up down change_to_tag
#cd polybar
#cd scripts
#chmod +x *.sh
#cd ..
#cd ..
#cd ..
#cd ..
#cd ..

#cd leftwm
#chmod +x *.toml
#cd themes
#cd eden
#chmod +x up down change_to_tag
#cd scripts
#chmod +x *.sh
#cd ..
#cd ..
#cd ..
#cd ..

#cd leftwm
#chmod +x *.toml
#cd themes
#cd parker
#chmod +x up down change_to_tag
#cd scripts
#chmod +x *.sh
#cd ..
#cd ..
#cd ..
#cd ..

mkdir -p ~/.config/picom
cp picom.conf ~/.config/picom/picom.conf

mkdir -p ~/.config/dunst
cp dunstrc ~/.config/dunst/dunstrc


cd rofi
cd applets
cd applets
chmod +x *.sh
cd ..
cd ..
#cd bin
#chmod +x applet_powermenu
#cd ..
cd launchers
cd colorful
chmod +x *.sh
cd ..
cd ..
cd ..



cd i3New
cd polybar
chmod +x *.sh
cd ..
cd bin
chmod +x *.sh
cd ..
cd ..

cd bspwm
chmod +x bspwmrc
chmod +x testwallpaper
cd ..

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd polybar-bspwm
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd openbox
chmod +x autostart
chmod +x *.sh
cd ..

cd tint2
chmod +x tint2rc
chmod +x tint2-sessionfile
cd ..

cd qtile
chmod +x *.sh
cd ..

cp powermenu.sh ~/powermenu.sh
#######################################################

if [ ! -d $HOME"/.config" ] 
then mkdir -p $HOME"/.config"
fi

cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)

if [ ! -d $HOME"/.config/polybar" ] 
then
mkdir -p $HOME"/.config/polybar"
fi

mkdir -p $HOME"/.config/polybar-bspwm"
mkdir -p $HOME"/.config/lxterminal"
mkdir -p $HOME"/.config/qtile"

if [ ! -d $HOME"/.config/bspwm" ]
then
mkdir -p $HOME"/.config/bspwm"
fi
#[ -d $HOME"/dwm-bar" ] || mkdir -p $HOME"/dwm-bar"

#if [ ! -d $HOME"/.dwm" ]
#then
#mkdir -p $HOME"/.dwm"
#fi

#[ -d $HOME"/.dwm" ] || mkdir -p $HOME"/.dwm"

#mkdir -p $HOME"/dwm-6.2"
#mkdir -p $HOME"/dwm-bar"
#mkdir -p $HOME"/.dwm"


#mkdir -p $HOME"/.config/leftwm"

#[ -d $HOME"/.config/termite" ] || mkdir -p $HOME"/.config/termite"
[ -d $HOME"/.config/rofi" ] || mkdir -p $HOME"/.config/rofi"
[ -d $HOME"/.config/jgmenu" ] || mkdir -p $HOME"/.config/jgmenu"

#cd leftwm
#cp -r * ~/.config/leftwm
#cd ..

cd qtile
cp -r * ~/.config/qtile
cd ..


cd lxterminal
cp -r * ~/.config/lxterminal
cd ..


cd polybar
cp -r * ~/.config/polybar
cd ..

cd polybar-bspwm
cp -r * ~/.config/polybar-bspwm
cd ..

cd bspwm
cp -r * ~/.config/bspwm
cd ..

#cd dwm
#cp -r * ~/.dwm
#cd ..

#cd termite
#cp -r * ~/.config/termite
#cd ..

cd rofi
cp -r * ~/.config/rofi
cd ..

cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

#cd openbox
#cp -r * ~/.config/openbox
#cd ..

#cd obmenu-generator
#cp -r * ~/.config/obmenu-generator
#cd ..

#cd tint2
#cp -r * ~/.config/tint2
#cd ..

#mv ~/.bashrc ~/.bashrc-$(date +%Y.%m.%d-%H.%M.%S)
#cp bashrc ~/.bashrc

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

####Install Spectrtwm####################

cd spectrwm
cd scripts
chmod +x *.sh
cd ..
cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..
cd ..


mkdir -p ~/.config/spectrwm
cp spectrwm.conf ~/.spectrwm.conf

cd spectrwm
cp -r * ~/.config/spectrwm
cd ..

#### Install i3 ##########################
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3blocks
mkdir -p ~/.config/i3New

cd i3New
cp -r * ~/.config/i3New
cd ..


cd i3
chmod +x testwallpaper
chmod +x *.sh
cd ..

cd i3blocks
chmod +x *.sh
cd ..

cd i3
cp -r * ~/.config/i3
cd ..

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..


######## Install xmonad ##########################
#mkdir -p ~/.xmonad
#mkdir -p ~/.config/xmobar

#cd xmonad
#chmod +x autostart.sh
#####chmod +x testwallpaper
#chmod +x xmonad.hs
#cd ..

#cd xmobar
#chmod +x xmobarrc
#chmod +x *.sh

#cd ..

#cd xmonad
#cp -r * ~/.xmonad
#cd ..

#cd xmobar
#cp -r * ~/.config/xmobar
#cd ..


#sudo pacman -S snapd
#sudo systemctl enable --now snapd.socket
######## Install DWM ##############################

mkdir -p ~/.local/share/dwm
sudo mkdir -p /usr/share/xsessions

mkdir -p ~/Luke

#mkdir -p ~/dwm-flexipatch
#mkdir -p ~/slstatus

#mkdir -p ~/st-transparency-scrollback

#cd slstatus
#chmod +x ram
#cd ..

cd Luke
cd statusbar
chmod +x *.sh
chmod +x sb-volume
chmod +x sb-clock
cd ..
cd ..



cd Luke
cp -r * ~/Luke
cd ..

#cd slstatus
#cp -r * ~/slstatus
#cd ..

#cd st-transparency-scrollback
#cp -r * ~/st-transparency-scrollback
#cd ..

sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
cp autostart.sh ~/.local/share/dwm

mkdir -p ~/.local/share/fonts
cp Feather.ttf ~/.local/share/fonts/Feather.ttf

##############################Install bumblebee for i3########################
cd ~/.config/i3/bumblebee-status
makepkg -sicr

cd ~/Luke/dwm-flexipatch
tar -xzvf patch.tar.gz
sudo make clean install

cd ~/Luke/dwmblocks
sudo make clean install

cd ~/Luke/st-transparency-scrollback
sudo make clean install

#########################Install bumblebee-status files - mine
cd ~/manjaro/i3/bumblebee-status/myfiles
sudo cp -r * /usr/share/bumblebee-status/bumblebee_status/modules/contrib
#xmonad --recompile

#cd ~/.config/leftwm/themes
#ln -s eden current

#####mv ~/.config/i3 ~/.config/i3-orig
#####mv ~/.config/i3New ~/.config/i3

#sudo systemctl enable bluetooth
#obmenu-generator -p

#echo "SNAP: For menu entry copy /var/lib/snapd/desktop/applications to /home/phil/.local/share/applications"
#echo "SNAP : From sxhkd do 'snap run brave' instead of just 'brave' "
echo "Appimage: Get appimagelauncher from releases.  Do 'appimagelauncher-lite...AppImage install' in terminal."
echo "Bluetooth not enabled. Do 'sudo systemctl enable bluetooth' to enable"
#echo "Get Beautyline icon from gnome.  Extract and copy into /usr/share/icons."
#echo "Get Prismatic theme and put in .themmes folder.  Obconf"
#echo "greeter-hide-users=false  in /etc/lightdm/lightdm.conf"

#cp xprofile ~/.xprofile
#cp getSession.sh ~/getSession.sh - now inside dwm-6.2/system

#sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop

##git clone  https://github.com/salman-abedin/devour.git
##cd devour
##sudo make install
##echo "All done"
##cd ..
#echo "Go to dwm6-2 and do sudo make install"


#cp -arf bspwm ~/.config/bspwm
#cp -arf sxhkd ~/.config/sxhkd
#cp -arf polybar ~/.config/polybar

#cd test2
#cd bspwm
#cp -r * ~/mythetest
#cd ..
#cd ..
#pwd
