# functions for sleeping etc
function rest() { TIME=${@:-now}; sudo shutdown -s $TIME; }
function reboot() { TIME=${@:-now}; sudo shutdown -r $TIME; }

# unlocking
function alohomora() { sudo chmod -R ${2:-700} ${1:-./*}; }

# git commit
function com() {
    git add -A;
    git commit;
}