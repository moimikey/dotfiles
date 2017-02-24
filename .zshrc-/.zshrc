export ZSH=~/.oh-my-zsh
. $ZSH/oh-my-zsh.sh

export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HISTSIZE=99999999

plugins=''
#plugins+=(dotenv)
plugins+=(nvm)
plugins+=(ssh-agent)

alias _="sudo"
alias root="_ -i"
alias fixaudio="_ killall coreaudiod"
alias fixcamera="_ killall VDCAssistant"
alias fixdupes="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -all s,l,u; killall Finder"
alias fixnpm="npm -g cache clean"
alias flushdns="_ dscacheutil -flushcache; echo `ps aux | grep mDNSResponder | grep -v grep | awk '{print $2}'` | xargs _ kill -HUP"
alias getcomposer="curl -s https://getcomposer.org/installer | php"
alias hosts="_ vim /etc/hosts"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias json="python -mjson.tool"
alias klear="find . -maxdepth 8 -delete"
alias latest="npm dist-tag ls"
alias wget="wget -c"
alias zshconfig="$EDITOR ~/.zshrc"

function update() {
  echo brew update
  brew update
  echo brew outdated
  brew outdated | while read cask; do brew upgrade $cask; done
  echo brew upgrade
  brew upgrade
  echo brew cleanup
  brew cleanup
  echo brew prune
  brew prune
}

function webserver() {
  local port="${1:-8888}"
  open "http://localhost:${port}/"
  python -c $'import SimpleHTTPServer;\nstream = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nstream[""] = "text/plain";\nfor key, value in stream.items():\n\tstream[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

defaults write com.apple.screencapture disable-shadow -bool true

tabs -2
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
