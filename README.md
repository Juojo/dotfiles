## Scale resolution DPI

Edit: ´~/.Xresource´.
´´´
*dpi: 180
Xft.dpi: 180
´´´

Reload the file

´´´ 
$ xrdb ~/.Xresources
´´´

## Swap fn with left control

https://github.com/free5lot/hid-apple-patched

## Set keyboard layout

on .profile or .zsh_profile

´setxkbmap -layout latam´

## Configure fn keys

to do

## Backlight

https://askubuntu.com/questions/715306/xbacklight-no-outputs-have-backlight-property-no-sys-class-backlight-folder

install xbacklight

## Synaptics config

sudo apt install xserver-xorg-input-synaptics
<br>
Config file location at: ´/etc/X11/xorg.conf.d/70-synaptics.conf´


Section "InputClass"
    Identifier "Synaptics Touchpad"
    MatchDriver "synaptics"
    MatchProduct "bcm5974"
    Driver "synaptics"

    Option "TapButton1" "1"   # Tap con un dedo = clic izquierdo
    Option "TapButton2" "3"   # Tap con dos dedos = clic derecho
    Option "TapButton3" "2"   # Tap con tres dedos = clic medio

    Option "VertTwoFingerScroll" "on"  # Scroll vertical con dos dedos
    Option "HorizTwoFingerScroll" "on" # Scroll horizontal con dos dedos

    Option "PalmDetect" "on"   # Activar detección de palma
    Option "FingerLow" "30"
    Option "FingerHigh" "50"

    Option "VertScrollDelta" "-200"  # Ajustar velocidad del scroll vertical
    Option "HorizScrollDelta" "-200" # Ajustar velocidad del scroll horizontal

    Option "AccelSpeed" "0.0"  # Aumentar velocidad del puntero
EndSection

## Wine

Install [wine, wine-mono and Flowgorithm](https://github.com/emanuele/flowgorithm_linux?tab=readme-ov-file)

### Notes:
* In Wine drive Z: always maps to the root (/). So Z:home/juojo/ goes to linux home dir.
* winecfg command for configuration
