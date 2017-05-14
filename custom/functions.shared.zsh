# functions for sleeping etc
function rest() { TIME=${1:-now}; sudo shutdown -s $TIME; }
function reboot() { TIME=${1:-now}; sudo shutdown -r $TIME; }

function kill() {
    TIME=${1:-now}
    case $OSTYPE in
        darwin*)
        sudo shutdown -h $TIME;
        ;;
        linux*)
        sudo shutdown $TIME;
        ;;
    esac
}

# unlocking
function alohomora() { sudo chmod -R ${2:-700} ${1:-./*}; }

# git commit
function com() {
    git add -A;
    git commit;
}