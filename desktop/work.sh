alias ru='touch tmp/restart.txt' # stands for 'rack up': reloads rack app
alias xcode='open *.xcodeproj'

function trash {
for b in "$@"
do
osascript -e "tell app \"Finder\" to delete POSIX file \"${PWD}/$b\"" 1>/dev/null
done
}

alias fix='git commit --amend -C HEAD'
alias ff='git merge --ff-only'
