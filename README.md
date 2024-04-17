# configs
This repo contains all my configs

#Apply Catppuccin theme for gtk

```
paru -S catppuccin-gtk-theme-macchiato
mkdir -p ~/.themes
ln -sf /usr/share/themes/Catppuccin-Macchiato-Standard-Blue-Dark/ "$HOME/.themes/Catppuccin-Dark"
ln -sf "/usr/share/themes/Catppuccin-Macchiato-Standard-Blue-Darkgtk-4.0/assets" "${HOME}/.config/gtk-4.0/assets"
ln -sf "/usr/share/themes/Catppuccin-Macchiato-Standard-Blue-Dark/gtk-4.0/gtk.css" "${HOME}/.config/gtk-4.0/gtk.css"
ln -sf "/usr/share/themes/Catppuccin-Macchiato-Standard-Blue-Dark/gtk-4.0/gtk-dark.css" "${HOME}/.config/gtk-4.0/gtk-dark.css"
```


Verify the GTK3 / GT4 configurations :


    Source : Catppuccin GTK theme

    Reference : https://wiki.archlinux.org/title/GTK


~/.config/gtk-3.0/settings.ini and ~/.config/gtk-4.0/settings.ini
```
[Settings]
gtk-theme-name=Catppuccin-Dark
...
gtk-application-prefer-dark-theme=# 
```

Cursors

    Source : Catppuccin Cursors page

    Reference : https://wiki.archlinux.org/title/Cursor_themes

```
paru -S catppuccin-cursors-macchiato

```
Create ~/.icon/default/index.theme

```
[icon theme]
Inherits=Catppuccin-Macchiato-Dark-Cursors

```
Verify ~/.config/gtk-3.0/settings.ini and ~/.config/gtk-4.0/settings.ini

```
[Settings]
gtk-cursor-theme-name = Catppuccin-Macchiato-Dark-Cursors

```
Verify ~/.Xresources

```
Xcursor.theme: Catppuccin-Macchiato-Dark-Cursors
Xcursor.size: 24

```
Verify ~/.xinitrc

```
xrfb -merge ~/.Xresources

```
Set the cursor theme for GNOME :

```
gsettings set org.gnome.desktop.interface cursor-theme Catppuccin-Macchiato-Dark-Cursors
gsettings set org.gnome.desktop.interface cursor-size 24

```
GTK Cattppuccin Papirus Icons

    Source : Papirus-folders Catppuccin theme

    Reference : How to override theme icons

```
paru -S papirus-icon-theme papirus-folders-catppuccin-git

```
Verify ~/.config/gtk-3.0/settings.ini and ~/.config/gtk-4.0/settings.ini

```
[Settings]
...
gtk-icon-theme-name=Papirus-Dark
...

```
Choose the folder color :

```
papirus-folders -l
papirus-folders -C cat-macchiato-lavender

```
Rofi

Download the theme

```
mkdir ~/.config/rofi
curl -L "https://raw.githubusercontent.com/catppuccin/rofi/main/basic/.local/share/rofi/themes/catppuccin-macchiato.rasi" -O

```
Verify the content of ~/.config/rofi/config.rasi

```
@theme "catppuccin-macchiato"
```
