case $OSTYPE in linux*)

alias empty="rm -rf ~/.local/share/Trash/*"

alias testing="echo testing aliases"

alias open="xdg-open"

alias @="xdg-open"

alias get="sudo apt-get install"

# Windows subsystem for linux

export $WINHOME="/mnt/c/Users/Thomas"

alias winhome="cd $WINHOME && l"

alias windocs="cd $WINHOME/Documents && l"

alias windown="cd $WINHOME/Downloads && l"

alias windesk="cd $WINHOME/Desktop && l"

;; esac

