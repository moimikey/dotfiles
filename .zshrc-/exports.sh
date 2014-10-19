# ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME='gentoo'
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true
plugins=(git-extras grunt urltools npm bower sync)

# Paths
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$(brew --prefix coreutils)/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/libexec/gnubin:/Users/mshertzberg/depot_tools:$HOME/.rvm/bin"