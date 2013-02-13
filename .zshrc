# ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="geoffgarside"
COMPLETION_WAITING_DOTS="true"
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias reload="source ~/.zshrc"

# Paths
export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/Cellar/ruby/1.9.3-p385/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/libexec/gnubin"

# NVM
[[ -s /Users/mshertzberg/.nvm/nvm.sh ]] && . /Users/mshertzberg/.nvm/nvm.sh

# Verbs
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Override
alias git="hub"
alias wget="wget -c"

# Util
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias root="sudo -i"
alias flush_all="echo 'flush_all' | nc localhost 11211 -i1 <<< 'quit'"
#alias convertvid="echo ffmpeg -i $ARG1 -b 1024k -i $ARG2.mpg $ARG2.webm $ARG2.ogv"
#alias convertvid="xargs -I % bash -c 'ffmpeg -i % -b:v 1024k %.mpg %.webm %.ogv' <<<"

# Fixes
alias fixcamera="sudo killall VDCAssistant"
alias fixaudio="sudo killall coreaudiod"
alias fixnpm="sudo npm -g cache clean"

# Libs
alias wp="wget http://wordpress.org/latest.tar.gz && tar xvzf latest.tar.gz && rm -rf latest.tar.gz && cd wordpress && mv * .. && cd .. && rm -rf wordpress"
alias roots="git clone git://github.com/retlehs/roots.git"
alias jqboiler="wget --no-check-certificate https://raw.github.com/zenorocha/jquery-boilerplate/master/jquery.boilerplate.min.js"
alias boilerplate="curl -Ls 'http://www.initializr.com/builder?h5bp-content&modernizr&jquerymin&h5bp-iecond&h5bp-chromeframe&h5bp-htaccess&h5bp-favicon&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-adobecrossdomain&h5bp-css&h5bp-csshelpers&h5bp-mediaqueryprint&h5bp-mediaqueries' > initializr.zip && unzip initializr.zip && mv initializr/{,.}* . && rm -rf initializr*"
alias bootstrap="curl -Ls 'http://www.initializr.com/builder?boot-hero&jquerymin&h5bp-iecond&h5bp-chromeframe&h5bp-analytics&h5bp-htaccess&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-adobecrossdomain&modernizrrespond&boot-css&boot-scripts' > initializr.zip && unzip initializr.zip && mv initializr/{,.}* . && rm -rf initializr*"
alias responsive="curl -Ls 'http://www.initializr.com/builder?izr-responsive&jquerymin&h5bp-iecond&h5bp-chromeframe&h5bp-analytics&h5bp-htaccess&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-adobecrossdomain&modernizrrespond&h5bp-css&h5bp-csshelpers&h5bp-mediaqueryprint' > initializr.zip && unzip initializr.zip && mv initializr/{,.}* . && rm -rf initializr*"

# Bower
alias raphael="bower install raphael"
alias yepnope="bower install yepnope"
alias jquery="bower install jquery"
alias jqueryui="bower install jquery-ui"
alias backbone="bower install backbone"
alias underscore="bower install underscore"
alias waypoints="bower install jquery-waypoints"
alias spinjs="bower install spin.js"
alias storejs="bower install store.js"
alias isotope="bower install isotope"
alias jquery.lazyload="bower install jquery.lazyload"
alias requirejs="bower install requirejs"
alias normalize.css="bower install normalize-css"
alias moment="bower install moment"
alias accountingjs="bower install accounting"
alias jquery.easing="bower install jquery-easing"
alias animate.css="bower install animate.css"
alias twitterlib="bower install twitterlib"
alias jquery.transit="bower install jquery.transit"
alias hog="bower install hog-descriptor"
alias webshim="bower install webshim"
alias resumable="bower install resumablejs"
alias systemjs="bower install systemjs"
alias ccv="bower install ccv"
alias sugar="bower install sugar"
alias listjs="bower install listjs"
alias fuelux="bower install fuelux"
alias rickshaw="bower install rickshaw"
alias q="bower install q"
alias wysi="bower install bootstrap-wysihtml5"

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
alias flush="dscacheutil -flushcache"
alias vhosts="mate /private/etc/apache2/extra/httpd-vhosts.conf"
alias hosts="mate /etc/hosts"

# Remote
alias thor="ssh root@69.55.55.139"
alias thorip="echo 69.55.55.139 | pbcopy | echo copied to clipboard"
alias xthor="xargs -I % bash -c 'scp % root@69.55.55.139:%' <<<"
alias forks="ssh root@69.55.54.222"
alias xforks="xargs -I % bash -c 'scp % root@69.55.54.222:%' <<<"
alias forksip="echo 69.55.54.222 | pbcopy | echo copied to clipboard"
alias snickers="ssh root@192.34.57.136"
alias xsnickers="xargs -I % bash -c 'scp % root@192.34.57.136:%' <<<"
alias snickersip="echo 192.34.57.136 | pbcopy | echo copied to clipboard"
alias highline="ssh root@highlineballroom.com"
alias hertzberg="ssh root@hertzberg.co"
alias puff="ssh root@192.81.208.29"
alias xpuff="xargs -I % bash -c 'scp % root@192.81.208.29:%' <<<"
alias puffip="echo 192.81.208.29 | pbcopy | echo copied to clipboard"
alias mmportal="ssh mshertzberg@portal.ci.mimedia.com"
alias xmmportal="xargs -I % bash -c 'scp % mshertzberg@portal.ci.mimedia.com:%' <<<"
alias slu="ssh elisa@stylelikeu.com"
alias xslu="xargs -I % bash -c 'scp % elisa@stylelikeu.com:%' <<<"

# Fun
alias wiki="xargs -I % bash -c 'dig +short txt %.wp.dg.cx' <<<"
alias up="/Users/mshertzberg/.scripts/Dropbox-Uploader/dropbox_uploader.sh"

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
	echo — Updating MacPorts...
	sudo port selfupdate
	echo — Upgrading ports...
	sudo port -p upgrade outdated not curl
	echo — Updating NPM packages...
	npm -g update
	echo — Done!
}

echo
echo ' OPTIONS'
perl -e 'print " =", "—" x 85, "=\n"'
echo " =———————————>\tthor | forks | snickers | puff | hertzberg | highline | mmportal | slu"
echo " jqboiler\tFetch jQuery plugin boilerplate"
echo " jslint\t\tJSLint"
echo " jshint\t\tJSHint"
echo " coffeelint\tCoffeeLint"
echo " coffee\t\tCoffeeScript Compiler"
echo " browsers –––>\tchrome | chrome-nosec | canary | canary-nosec | safari | opera | firefox"
echo " =–––––––––––>\tGET HEAD POST PUT DELETE TRACE OPTIONS"
echo " =–––––––––––>\tBOWER:"
for i in `alias | grep bower | awk '{print $1}' | rev | cut -c8- | rev`; do
	echo "\t\t— $i"
done
echo ''

plugins=(npm urltools)
source $ZSH/oh-my-zsh.sh