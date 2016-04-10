# Override
alias ack='pt -S -f --hidden'
alias vi="vim"
alias wget="wget -c"

# ImageMagick
# alias blackandwhite='mogrify -colorspace gray'
# alias transparentize='mogrify -transparent white'
# alias whataretheseimages='for file in *.(JPG|jpg|gif|GIF|jpeg|JPEG); do identify -format "filename: %f | filesize: %[size] | orien: %[orientation] \n" $file; done'

# Composer
alias composer="php composer.phar"
alias getcomposer="curl -s https://getcomposer.org/installer | php"

# Git
# alias howbigismycodebase="git ls-files | grep coffee | xargs wc -l"
# alias pull="gf && xargs -I % bash -c 'git checkout pr/%' <<<"

# Util
# alias emptytrash="_ rm -rfv /Volumes/*/.Trashes; _ rm -rfv ~/.Trash; _ rm -rfv /private/var/log/asl/*.asl"
alias flush="_ dscacheutil -flushcache; echo `ps aux | grep mDNSResponder | grep -v grep | awk '{print $2}'` | xargs _ kill -HUP"
alias flushall="echo 'flush_all' | nc localhost 11211 -i1 <<< 'quit'"
alias getcomposer="curl -s https://getcomposer.org/installer | php"
# alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
# alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias hosts="_ subl /etc/hosts"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias json="python -mjson.tool"
alias klear="find . -maxdepth 1 -delete"
alias pub="more ~/.ssh/id_rsa.pub | pbcopy | echo 'public key copied to clipboard'"
alias root="_ -i"
# alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
# alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# alias sniff="_ ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Node
alias nodepackages="npm list -g --depth=0"

# Fixes
alias fixaudio="_ killall coreaudiod"
alias fixcamera="_ killall VDCAssistant"
alias fixdupes="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -all s,l,u; killall Finder"
alias fixnpm="npm -g cache clean"

# Fun
# alias lol="lolcommits --enable"
# alias up="/Users/mshertzberg/.scripts/Dropbox-Uploader/dropbox_uploader.sh"
# alias wiki="xargs -I % bash -c 'dig +short txt %.wp.dg.cx' <<<"

# Browse
alias canary-nosec="open /Applications/Google\ Chrome\ Canary.app --args --disable-web-security --disable-prompt-on-repost"
alias canary="open -a /Applications/Google\ Chrome\ Canary.app"
alias chrome-nosec="open /Applications/Google\ Chrome.app --args --disable-web-security --disable-prompt-on-repost --allow-running-insecure-content --ignore-certificate-errors"
alias chrome="open -a /Applications/Google\ Chrome.app"
alias firefox="open -a firefox"
alias opera="open -a opera"
alias safari="open -a safari"

# ZSH
# alias ohmyzsh="subl ~/.oh-my-zsh"
# alias reload=". ~/.zshrc"
# alias zshconfig="subl ~/git/dotfiles"
