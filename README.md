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

## Flowg

* Wine -> flowg ($ flowg)
* xzoom ($ xzoom) (apt install xzoom)
* [swcursor](https://github.com/andykitchen/swcursor/) ('~/.local/bin/swcursor' $ .swcursor)

## Custom layout

Add the custom layout to '/usr/share/X11/xkb/symbols/us'
```
partial alphanumeric_keys
xkb_symbols "customintl" {

    name[Group1]= "English (US, intl., custom layout)";

	    key <TLDE> { [ Escape ] };
    key <AE01> { [	   1,     exclam,    exclamdown ] };
    key <AE02> { [	   2,         at ] };
    key <AE03> { [	   3, numbersign ] };
    key <AE04> { [	   4,     dollar ] };
    key <AE05> { [	   5,    percent ] };
    key <AE06> { [         6, asciicircum ] };
    key <AE07> { [	   7,  ampersand] };
    key <AE08> { [	   8,   asterisk] };
    key <AE09> { [	   9,  parenleft] };
    key <AE10> { [	   0, parenright] };
    key <AE11> { [     minus, underscore] };
    key <AE12> { [     equal,       plus] };

    key <AD01> { [	   q,          Q] };
    key <AD02> { [	   w,          W] };
    key <AD03> { [	   e,          E,        eacute,           Eacute ] };
    key <AD04> { [	   r,          R] };
    key <AD05> { [	   t,          T] };
    key <AD06> { [	   y,          Y] };
    key <AD07> { [	   u,          U,        uacute,           Uacute ] };
    key <AD08> { [	   i,          I,        iacute,           Iacute ] };
    key <AD09> { [	   o,          O,        oacute,           Oacute ] };
    key <AD10> { [	   p,          P] };
    key <AD11> { [ bracketleft,  braceleft] };
    key <AD12> { [bracketright, braceright] };

    key <AC01> { [	   a,          A,        aacute,           Aacute ] };
    key <AC02> { [	   s,          S] };
    key <AC03> { [	   d,          D] };
    key <AC04> { [	   f,          F] };
    key <AC05> { [	   g,          G] };
    key <AC06> { [	   h,          H] };
    key <AC07> { [	   j,          J] };
    key <AC08> { [	   k,          K] };
    key <AC09> { [	   l,          L] };
    key <AC10> { [ semicolon,      colon,           ntilde, Ntilde] };
    key <AC11> { [dead_acute, quotedbl, apostrophe, grave] };

    key <AB01> { [	   z,          Z] };
    key <AB02> { [	   x,          X] };
    key <AB03> { [	   c,          C] };
    key <AB04> { [	   v,          V] };
    key <AB05> { [	   b,          B] };
    key <AB06> { [	   n,          N,        ntilde,           Ntilde ] };
    key <AB07> { [	   m,          M] };
    key <AB08> { [     comma,       less] };
    key <AB09> { [    period,    greater] };
    key <AB10> { [     slash,   question,  questiondown] };
    key <BKSL> { [ backslash,        bar,       degree] };

    key <LSGT> { [ backslash,   bar, degree] };

    include "level3(ralt_switch)"
};
```
Set the layout at '/etc/default/keyboard'
```
# KEYBOARD CONFIGURATION FILE

# Consult the keyboard(5) manual page.

XKBMODEL="pc105"
XKBLAYOUT="us"
XKBVARIANT="customintl"
XKBOPTIONS=""

BACKSPACE="guess"
```
or at '.zsh_profile'
```setxkbmap -layout us -variant customintl```

or run this command (resets to default layout after reboot)

```setxkbmap -layout us -variant customintl```

> https://medium.com/@damko/a-simple-humble-but-comprehensive-guide-to-xkb-for-linux-6f1ad5e13450

### Windows custom layout (MSKLC)

![image](https://github.com/user-attachments/assets/86bb3b07-a975-4cf2-b37d-6617977c25f0)
![image](https://github.com/user-attachments/assets/43748109-4b5c-43fc-84e8-7293ff6b67cd)
![image](https://github.com/user-attachments/assets/97ef56ae-c33d-4f3e-ab8d-39e82fc4e9b8)
![image](https://github.com/user-attachments/assets/eed87f20-86fa-4ff3-a6ce-5d955559bdec)
