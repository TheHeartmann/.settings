# functions for sleeping etc
function rest() { TIME=${1:-now}; sudo shutdown -s $TIME; }

function kill() {
    TIME=${1:-now}
    case $OSTYPE in
        darwin*)
        halt
        ;;
        linux*)
        shutdown $TIME
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


function google()
{
    if [ $# -eq 0 ];
        then
            open "https://www.google.com/"
    else
        open "https://www.google.com/search?q=$@"
    fi
}