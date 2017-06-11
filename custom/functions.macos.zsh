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

function wifi()
{
    while getopts ":qrsyn" opt;
    do
        case $opt in
            q|n)
            networksetup -setairportpower en0 off;
            echo "wifi turned off"
            ;;
            s|y)
            networksetup -setairportpower en0 on
            echo "wifi turned on"
            ;;
            r)
            wifi -qs
            ;;
            \?)
            echo "Invalid argument: -$OPTARG"
        esac
    done
}

;; esac

