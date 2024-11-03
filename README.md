# Thinkfiles
This repo's name is simply because these are my thinkpad's dotfiles which I'll use everywhere else from now on because I created a configuration I'm comfy with in it.
> **_This repository is Work In Progress_**
## Introduction
These are my personal dotfiles and it'll receive commits and changes as I see fit, once I'm done creating a solid base config I'll create a different branch for my desktop computer in which I'll add specific changes / adaptations for it.

## Installation
I won't provide an installation script for this config as it is not needed, however, I will list here all the dependencies you need for the config to work properly.

### Yay
```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### Hyprland
```bash
yay -S hyprland-git waybar-git xdg-desktop-portal-hyprland
```

### Fonts

```bash
sudo pacman -S $(pacman -Sgq nerd-fonts)
sudo pacman -S $(pacman -Ssq noto-fonts)
```

### Others
```bash
yay -S python3 python2 sddm-git kitty grimblast hyprpicker nwg-look vesktop-bin nemo wlogout mpv wl-clipboard firefox nemo pavucontrol swww-git python-pywalfox pywal-git wpgtk rofi-git swayosd-git swaync-git
```

> You need the FlatColor theme for wpgtk and pywal to work properly when syncing color schemes.

> You also need to link the pywal color template for vesktop to the themes folder in the right folder.