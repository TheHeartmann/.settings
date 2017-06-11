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

function bt()
{
    if [ $# -eq 0 ];
        then
            bt -h
    else
        while getopts ":qrsyn" opt;
        do
            case $opt in
                q|n)
                blueutil off
                echo "Bluetooth turned off"
                ;;
                s|y)
                blueutil on
                echo "Bluetooth turned on"
                ;;
                r)
                bt -qs
                ;;
                \?)
                echo "Bluetooth:"
                blueutil status
            esac
        done
    fi
}

;; esac

