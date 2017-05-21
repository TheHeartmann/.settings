case $OSTYPE in darwin*)

#Yarn path setup (https://yarnpkg.com/en/docs/install)
export PATH="$PATH:`yarn global bin`"

#For git updates etc?
export PATH="/usr/local/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# added by travis gem
[ -f /Users/Thomas/.travis/travis.sh ] && source /Users/Thomas/.travis/travis.sh
export PATH="/usr/local/sbin:$PATH"

;; esac