case $OSTYPE in darwin*)

#functions for multi-commands
function code () {
    touch "$@";
    open -a Visual\ Studio\ Code\ -\ Insiders "$@";
}

function word () {
    touch "$@";
    open -a Microsoft\ Word "$@";
}

function ddl () {
    defaults write com.apple.Dock autohide-delay -float "$@" && killall Dock
}

# turn hidden files on/off in Finder
function show() { defaults write com.apple.Finder AppleShowAllFiles YES ; killall Finder ; }
function hide() { defaults write com.apple.Finder AppleShowAllFiles NO ; killall Finder ; }

;; esac

