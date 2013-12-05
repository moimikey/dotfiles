# ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"
COMPLETION_WAITING_DOTS="true"

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias reload="source ~/.zshrc"

# Paths
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$(brew --prefix coreutils)/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/libexec/gnubin:/Users/mshertzberg/depot_tools:$HOME/.rvm/bin:$PATH"

# NVM
[[ -s /Users/mshertzberg/.nvm/nvm.sh ]] && . /Users/mshertzberg/.nvm/nvm.sh

# RVM
[[ -s /Users/mshertzberg/.rvm/scripts/rvm ]] && . /Users/mshertzberg/.rvm/scripts/rvm

# OTF HTTP Methods
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Override
alias git="hub"
alias wget="wget -c"
alias grunt="nocorrect grunt"
alias port="port -d"
alias vi="vim"
alias bower='noglob bower'

# Git
alias gr="git rebase -i master && git commit --amend"
alias gb="git branch -v"
alias gbr="git branch -r -v"
alias gba="git branch -a -v"
alias gs="git status -sb"
alias gd="git diff"
alias gdc="git diff --cached"
alias gl="git log --pretty=oneline"
alias gls="git log --stat"
alias glh="git log --color --oneline --all --decorate --graph"
alias gitk="gitk --all &"
alias gg="git grep -n"
alias gp="git pull --rebase"
alias gu="git pull upstream master && git add . && git commit -am \"resync upstream on `date`\" && git push"
alias gf="git fetch origin && git rebase"
alias pull="gf && xargs -I % bash -c 'git checkout pr/%' <<<"

# Util
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias root="_ -i"
alias flush_all="echo 'flush_all' | nc localhost 11211 -i1 <<< 'quit'"
alias poser="curl -s https://getcomposer.org/installer | php"
alias klear="find . -delete"
alias json="python -mjson.tool"

# Fixes
alias fixcamera="sudo killall VDCAssistant"
alias fixaudio="sudo killall coreaudiod"
alias fixnpm="sudo npm -g cache clean"
alias fixdupes="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -all s,l,u; killall Finder"

# Libs
alias wp="wget http://wordpress.org/latest.tar.gz && tar xvzf latest.tar.gz && rm -rf latest.tar.gz && cd wordpress && mv * .. && cd .. && rm -rf wordpress"
alias roots="git clone git://github.com/retlehs/roots.git"

# Dev
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'
alias ios="open -a /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app"
alias perms="sudo chown -R _www:staff . && sudo chmod -R g+rw ."
alias minify="yuicompressor --verbose"
alias closure="closure-compiler"
alias django="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/django-admin.py"
alias cafe="coffee -wc src -o js"

# Sys
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias pub="more ~/.ssh/id_rsa.pub | pbcopy | echo 'public key copied to clipboard'"
alias flush="sudo dscacheutil -flushcache; echo `ps aux | grep mDNSResponder | grep -v grep | awk '{print $2}'` | xargs sudo kill -HUP"
alias vhosts="mate /private/etc/apache2/extra/httpd-vhosts.conf"
alias hosts="mate /etc/hosts"

# Fun
alias wiki="xargs -I % bash -c 'dig +short txt %.wp.dg.cx' <<<"
alias up="/Users/mshertzberg/.scripts/Dropbox-Uploader/dropbox_uploader.sh"
alias lol="lolcommits --enable"

# Browse
alias safari="open -a safari"
alias firefox="open -a firefox"
alias opera="open -a opera"
alias chrome="open -a /Applications/Google\ Chrome.app"
alias chrome-nosec="open /Applications/Google\ Chrome.app --args --disable-web-security"
alias canary="open -a /Applications/Google\ Chrome\ Canary.app"
alias canary-nosec="open /Applications/Google\ Chrome\ Canary.app --args --disable-web-security"

function gz() {
	echo "orig size    (bytes): "
	cat "$1" | wc -c
	echo "gzipped size (bytes): "
	gzip -c "$1" | wc -c
}

function webserver() {
	local port="${1:-8000}"
	open "http://localhost:${port}/"
	python -c $'import SimpleHTTPServer;\nstream = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nstream[""] = "text/plain";\nfor key, value in stream.items():\n\tstream[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

function escape() {
	printf "\\\x%s" $(printf "$@" | xxd -p -c1 -u)
	echo
}

function update() {
	echo — Updating Homebrew...
	brew update
	echo — Upgrading Homebrew packages...
	brew upgrade
	echo — Cleaning up...
	brew cleanup
  echo - Pruning...
  brew prune
	echo — Updating MacPorts...
	sudo port selfupdate
	echo — Upgrading ports...
	sudo port -p upgrade outdated
  echo - Cleaning up ports...
  sudo port clean --all installed
  echo - Removing inactive ports...
  sudo port -f uninstall inactive
	echo — Updating NPM packages...
	npm -g up
  echo - Updating RVM...
  rvm get stable
  echo - Updating Ruby Gems...
  rvm rubygems latest
	echo — Done
}

RED="\x1b[31m"
GRN="\x1b[32m"
YEL="\x1b[33m"
CYA="\x1b[34m"
PUR="\x1b[35m"
BLU="\x1b[36m"
RST="\x1b[0m"

echo
echo " \t\t${BLU}thor${RST} | ${BLU}forks${RST} | ${BLU}snickers${RST} | ${BLU}puff${RST} | ${BLU}hertzberg${RST} | ${BLU}highline${RST} | ${BLU}mmportal${RST} | ${BLU}slu${RST}"
echo " ${GRN}jqboiler${RST}\tFetch jQuery plugin boilerplate"
echo " ${GRN}coffeelint${RST}\tCoffeeLint"
echo " git-extras\t${GRN}git-commits-since [yesterday|last week|etc]${RST}"
echo " git-extras\t${GRN}git release [semver]${RST}"
echo " git-extras\t${GRN}git ignore [...item]${RST}"
echo " git-extras\t${GRN}git-graft <src-branch> [dest-branch]${RST} (merge all)"
echo " git-extras\t${GRN}git-archive-file${RST} (zip up the current repo)"
echo " git-ftp\t${GRN}git ftp <init|push> <-u user> <-p -> <ftp://host.example.com/public_html>"
#echo " =–––––––––––>\tBOWER:"
#for i in `alias | grep bower | awk '{print $1}' | rev | cut -c8- | rev`; do
#	echo "\t\t— $i"
#done
echo ''

plugins=(git npm urltools bower coffee rsync)
source $ZSH/oh-my-zsh.sh