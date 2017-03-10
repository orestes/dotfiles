# User theme configuration

ZSH_THEME=sorin
DEFAULT_USER=orestes
DOTFILES=$HOME/.dotfiles

plugins=(git themes httpie zsh-navigation-tools docker yarn)
killport() { lsof -i tcp:"$@" | awk 'NR!=1 {print $2}' | xargs kill ;}

export LANG=en_US.UTF-8
export LC_ALL=$LANG

# dev tools

source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

#. $DOTFILES/load-adb.sh
. $DOTFILES/load-nvm.sh
. $DOTFILES/load-rvm.sh # rvm needs to be last, or it'll complain
. $DOTFILES/golang.sh

#export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH="/usr/local/sbin:$PATH"
