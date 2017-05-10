# functions for sleeping etc
function rest() { TIME=${@:-now}; sudo shutdown -s $TIME; }
function reboot() { TIME=${@:-now}; sudo shutdown -r $TIME; }