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

function take() {
  mkdir -p $1
  cd $1
}

function github_createrepo()
{
    sh -c "curl -u \"${2:-theheartmann}\" https://api.github.com/user/repos -d \"{\\\"name\\\":\\\"$1\\\"}\""
}

function github_deleterepo()
{
    sh -c "curl -u \"${2:-theheartmann}\" https://api.github.com/repos/${2:-theheartmann}/$1 -X DELETE"
}

function github_listrepos()
{
    user=${1:-theheartmann}

    data=$(sh -c "curl -s -u \"$user\" https://api.github.com/user/repos" | jshon -a -e name -u -p -e owner -e login -u -p -p -e private -u)


    echo -e "\n\e[1m# Repos available to \e[32m$user:\e[0m\n\n"
 
    i=1
    while [[ $data[(w)$i] != "false" && -n $data[(w)$i]  ]]
    do
        echo -e "\e[33m$data[(w)$((i++))]\e[0m | Owner: \e[34m$data[(w)$((i++))]\e[0m | Private: \e[92m$data[(w)$((i++))]\e[0m"
    done

    echo "\n\n# end transmission\n\n"
}
