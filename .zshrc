RED="\x1b[31m"
GRN="\x1b[32m"
YEL="\x1b[33m"
CYA="\x1b[34m"
PUR="\x1b[35m"
BLU="\x1b[36m"
RST="\x1b[0m"

# ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gentoo"
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true

alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias reload="source ~/.zshrc"

# Paths
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$(brew --prefix coreutils)/libexec/gnubin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/libexec/gnubin:/Users/mshertzberg/depot_tools"

# NVM
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# Settings
defaults write com.apple.screencapture disable-shadow -bool true

# Override
alias wget="wget -c"
alias grunt="noglob grunt"
alias port="port -d"
alias vi="vim"
alias bower='noglob bower'
alias php='/usr/bin/php'
alias ack='ag -u --stats'

# ImageMagick
alias transparentize='mogrify -transparent white'
alias whatarethese='for file in *.(JPG|jpg|gif|GIF|jpeg|JPEG); do identify -format "filename: %f | filesize: %[size] | orien: %[orientation] \n" $file; done'
alias blackandwhite='mogrify -colorspace gray'

# Image related...
alias b64="xargs -I % bash -c 'openssl base64 < %' <<<"

# Composer
alias getcomposer="curl -s https://getcomposer.org/installer | php"
alias composer="php composer.phar"

# Git
alias gr="git rebase -i master"
alias amend="git commit --amend"
alias howbigismycodebase="git ls-files | grep coffee | xargs wc -l"

# -v, -vv, --verbose
#     When in list mode, show sha1 and commit subject line for each head, along with relationship to upstream branch (if
#     any). If given twice, print the name of the upstream branch, as well (see also git remote show <remote>).
alias gb="git branch -v"

# -r, --remotes
#     List or delete (if used with -d) the remote-tracking branches.
alias gbr="git branch -rv"

#   mh/konami                fa82bb2 Fix dev server to not intercept XHR asset requests
#   mh/mediaitem-context     ccd3e26 add context menu + initial ability to add selected model to EXISTING family drive
# * mh/mediaview-fullscreen  cfd83b1 Merge pull request #197 from mimedia/mh/collections-hover-fix
#   mh/transition            a21c00b Merge pull request #198 from mojotech/ar/fd_comments
alias gba="git branch -av"

# mshertzberg@forge ~/MiMedia/WebClient (mh/mediaview-fullscreen*) $ gs
# ## mh/mediaview-fullscreen
#  M app/index.html
#  M app/scripts/apps/media-view/media-view-app.coffee
#  M app/scripts/apps/media-view/show/show-controller.coffee
# A  app/scripts/apps/media-view/show/templates/fullscreen.html
#  M app/scripts/apps/media-view/show/templates/media-view-layout.html
alias gs="git status -sb"

alias gd="git diff"
alias gdc="git diff --cached"

# cfd83b1b62c418fe986f8519bd2be2f4dd8e7961 Merge pull request #197 from mimedia/mh/collections-hover-fix
# 55d499ff2f2dc85111debe8ed3f8a416992759ae smoothen out performance of collections hover
alias gl="git log --pretty=oneline"

# commit 55d499ff2f2dc85111debe8ed3f8a416992759ae
# Author: Michael Scott Hertzberg <mshertzberg@gmail.com>
# Date:   Sat Dec 14 22:46:36 2013 -0500
#
#     smoothen out performance of collections hover
#
#  app/scripts/apps/effects/show/views/grid.coffee | 49 ++++++++++++++++++++++++++++++++-----------------
#  app/styles/_base.scss                           |  9 +++++++++
#  app/styles/_effects.scss                        |  7 ++++++-
#  3 files changed, 47 insertions(+), 18 deletions(-)
alias gls="git log --stat"

# * 7be39f2 (origin/pr/202) Infinite scroll media items on family drive
# * 4626921 Change default infinite pagination size
# | * 477ecb7 (origin/pr/201) Dont paginate across *real* collections
# | * 3a95b98 Update URL when paginating across collections
alias glh="git log --color --oneline --all --decorate --graph"

alias gitk="gitk --all &"
alias gg="git grep -n"
alias gp="git pull --rebase" # pull with rebase
alias gf="git fetch -p origin && git rebase" fetch HEAD of origin and rebase
alias grm="git rebase master" # rebase current branch with master
alias gbm="git branch --merged" # show branches that were merged
alias gbnm="git branch --no-merged" # show branches that were not merged
alias gbc="git branch --merged | xargs git branch -d" # remove local branches that have been merged

alias rb="git rebase master"
alias pull="gf && xargs -I % bash -c 'git checkout pr/%' <<<"
alias p="pivotal_tools --project-index=1"

# Util
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias root="_ -i"
alias flush_all="echo 'flush_all' | nc localhost 11211 -i1 <<< 'quit'"
alias poser="curl -s https://getcomposer.org/installer | php"
alias klear="find . -maxdepth 1 ! -name ".git\*" -delete"
alias json="python -mjson.tool"
alias hashcat="/Users/mshertzberg/git/hashcat-0.47/hashcat-0.47/hashcat-cli64.app"
alias libs="libz"

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
alias vhosts="vi /private/etc/apache2/extra/httpd-vhosts.conf"
alias hosts="_ vi /etc/hosts"



# Fun
alias wiki="xargs -I % bash -c 'dig +short txt %.wp.dg.cx' <<<"
alias up="/Users/mshertzberg/.scripts/Dropbox-Uploader/dropbox_uploader.sh"
alias lol="lolcommits --enable"

# Browse
alias safari="open -a safari"
alias firefox="open -a firefox"
alias opera="open -a opera"
alias chrome="open -a /Applications/Google\ Chrome.app"
alias chrome-nosec="open /Applications/Google\ Chrome.app --args --disable-web-security --disable-prompt-on-repost --allow-running-insecure-content --ignore-certificate-errors"
alias canary="open -a /Applications/Google\ Chrome\ Canary.app"
alias canary-nosec="open /Applications/Google\ Chrome\ Canary.app --args --disable-web-security --disable-prompt-on-repost"

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
    #echo — Updating MacPorts...
    #sudo port selfupdate
    #echo — Upgrading ports...
    #sudo port -p upgrade outdated
    #echo - Cleaning up ports...
    #sudo port clean --all installed
    #echo - Removing inactive ports...
    #sudo port -f uninstall inactive
    echo — Updating NPM packages...
    npm -g up
    echo - Updating RVM...
    rvm get stable
    echo - Cleanup up RVM...
    rvm cleanup all
    echo - Updating Ruby Gems...
    rvm rubygems latest
    echo — Done
}

plugins=(git-extras grunt urltools npm bower sync)
. $ZSH/oh-my-zsh.sh
#source ~/git/k/k.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
