killport() { lsof -i tcp:"$@" | awk 'NR!=1 {print $2}' | xargs kill ;}
alias oops='git commit --amend --no-edit'
alias oopsie='git push --force'
