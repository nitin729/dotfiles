if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
       Hyprland 
fi


if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi


