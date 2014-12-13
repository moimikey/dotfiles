# Override
alias wget="wget -c"
alias grunt="noglob grunt"
alias port="port -d"
alias vi="vim"
alias bower='noglob bower'
alias php='/usr/bin/php'
alias ack='ag -u --stats'
alias node='node --harmony'

# ImageMagick
alias transparentize='mogrify -transparent white'
alias whataretheseimages='for file in *.(JPG|jpg|gif|GIF|jpeg|JPEG); do identify -format "filename: %f | filesize: %[size] | orien: %[orientation] \n" $file; done'
alias blackandwhite='mogrify -colorspace gray'

# Image related...
alias b64="xargs -I % bash -c 'openssl base64 < %' <<<"

# Composer
alias getcomposer="curl -s https://getcomposer.org/installer | php"
alias composer="php composer.phar"

# Git
alias howbigismycodebase="git ls-files | grep coffee | xargs wc -l"
alias pull="gf && xargs -I % bash -c 'git checkout pr/%' <<<"

# Util
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias root="_ -i"
alias flushall="echo 'flush_all' | nc localhost 11211 -i1 <<< 'quit'"
alias getcomposer="curl -s https://getcomposer.org/installer | php"
alias klear="find . -maxdepth 1 -delete"
alias json="python -mjson.tool"
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias pub="more ~/.ssh/id_rsa.pub | pbcopy | echo 'public key copied to clipboard'"
alias flush="sudo dscacheutil -flushcache; echo `ps aux | grep mDNSResponder | grep -v grep | awk '{print $2}'` | xargs sudo kill -HUP"
alias hosts="_ vi /etc/hosts"

# Fixes
alias fixcamera="sudo killall VDCAssistant"
alias fixaudio="sudo killall coreaudiod"
alias fixnpm="sudo npm -g cache clean"
alias fixdupes="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -all s,l,u; killall Finder"

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

# ZSH
alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias reload="source ~/.zshrc"
