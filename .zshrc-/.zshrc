export ZSH=~/.oh-my-zsh
# http://geoff.greer.fm/lscolors/
export LS_COLORS="di=1;31:ln=35:so=0;41:pi=0;47:ex=32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HISTSIZE=99999999

plugins=''
plugins+=(docker)
plugins+=(dotenv)
plugins+=(git)
plugins+=(npm)
plugins+=(nvm)
plugins+=(ssh-agent)

# export GOPATH="$HOME/.go"
# export PATH="/usr/local/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:$GOPATH/bin:~/.cargo/bin"

. $ZSH/oh-my-zsh.sh

alias _="sudo"
alias fixaudio="_ killall coreaudiod"
alias fixcamera="_ killall VDCAssistant"
alias fixdupes="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -all s,l,u; killall Finder"
alias fixnpm="npm -g cache clean"
alias flushdns="_ dscacheutil -flushcache; echo `ps aux | grep mDNSResponder | grep -v grep | awk '{print $2}'` | xargs _ kill -HUP"
alias flushredis="echo 'flush_all' | nc localhost 11211 -i1 <<< 'quit'"
alias getcomposer="curl -s https://getcomposer.org/installer | php"
alias hosts="_ vim /etc/hosts"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias json="python -mjson.tool"
alias klear="find . -maxdepth 8 -delete"
alias latest="npm dist-tag ls"
alias root="_ -i"
alias vi="vim"
alias wget="wget -c"
alias zshconfig="code ~/.zshrc"

function update() {
  echo brew update
  brew update
  echo brew outdated
  brew outdated | while read cask; do brew upgrade $cask; done
  echo brew upgrade
  brew upgrade --all
  echo brew cleanup
  brew cleanup
  echo brew prune
  brew prune
  #echo david -g
  #david -g
}

function webserver() {
  local port="${1:-8888}"
  open "http://localhost:${port}/"
  python -c $'import SimpleHTTPServer;\nstream = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nstream[""] = "text/plain";\nfor key, value in stream.items():\n\tstream[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

defaults write com.apple.screencapture disable-shadow -bool true
setopt no_beep
setopt pushd_ignore_dups
setopt extended_glob
setopt extended_history
setopt always_to_end
setopt auto_menu
setopt complete_in_word
unsetopt menu_complete
# setopt correct
# setopt correctall
setopt prompt_subst
setopt multios
