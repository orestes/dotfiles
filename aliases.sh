killport() { lsof -i tcp:"$@" | awk 'NR!=1 {print $2}' | xargs kill ;}
alias woops='git commit --amend --no-edit'
alias woopsie='git push --force'
