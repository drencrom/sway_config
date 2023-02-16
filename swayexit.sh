#!/bin/sh

lock() {
    swaylock --indicator-radius 100 --indicator-thickness 20 -f -i /usr/share/wallpapers/Horos/contents/images/1920x1080.png -t
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        swaymsg exit
        ;;
    suspend)
        #lock && systemctl suspend
        systemctl suspend
        ;;
    hibernate)
        #lock && systemctl hibernate
        systemctl hibernate -i
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
