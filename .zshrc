ZSH=$HOME/.oh-my-zsh
ZSH_THEME="geoffgarside"
#CASE_SENSITIVE="true"
#DISABLE_AUTO_UPDATE="true"
#DISABLE_LS_COLORS="true"
#DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git brew macports osx textmate extract)

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/Cellar/ruby/1.9.3-p194/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/mshertzberg/node_modules/.bin:/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/libexec/gnubin"
export NODE_PATH="$NODE_PATH:/usr/local/lib/node_modules"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Launch iOS Simulator
alias ios="open -a /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "$method"="lwp-request -m '$method'"
done

# Configuration
# - This file
alias zshconfig="mate ~/.zshrc"
# - Oh My ZSH config
alias ohmyzsh="mate ~/.oh-my-zsh"
# - Reload this profile
alias reload="source ~/.zshrc"
# - Generate PHP Documentor blocks
alias doc="docblockgen"

# Web Applications & Code
# - WordPress
alias wp="wget http://wordpress.org/latest.tar.gz && tar xvzf latest.tar.gz && rm -rf latest.tar.gz && cd wordpress && mv * .. && cd .. && rm -rf wordpress"
# - Roots Theme for WordPress
alias roots="git clone git://github.com/retlehs/roots.git"
# - jQuery Plugin Boilerplate
alias jqboiler="wget --no-check-certificate https://raw.github.com/zenorocha/jquery-boilerplate/master/jquery.boilerplate.min.js"
# - HTML5 Boilerplate
alias boilerplate="curl -Ls 'http://www.initializr.com/builder?h5bp-content&modernizr&jquerymin&h5bp-iecond&h5bp-chromeframe&h5bp-htaccess&h5bp-favicon&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-adobecrossdomain&h5bp-css&h5bp-csshelpers&h5bp-mediaqueryprint&h5bp-mediaqueries' > initializr.zip && unzip initializr.zip && mv initializr/{,.}* . && rm -rf initializr"
# - HTML5 Bootstrap Boilerplate
alias bootstrap="curl -Ls 'http://www.initializr.com/builder?boot-hero&jquerymin&h5bp-iecond&h5bp-chromeframe&h5bp-analytics&h5bp-htaccess&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-adobecrossdomain&modernizrrespond&boot-css&boot-scripts' > initializr.zip && unzip initializr.zip && mv initializr/{,.}* . && rm -rf initializr"
# - HTML5 Responsive Boilerplate
alias responsive="curl -Ls 'http://www.initializr.com/builder?izr-responsive&jquerymin&h5bp-iecond&h5bp-chromeframe&h5bp-analytics&h5bp-htaccess&h5bp-favicon&h5bp-appletouchicons&h5bp-scripts&h5bp-robots&h5bp-humans&h5bp-adobecrossdomain&modernizrrespond&h5bp-css&h5bp-csshelpers&h5bp-mediaqueryprint' > initializr.zip && unzip initializr.zip && mv initializr/{,.}* . && rm -rf initializr"

# Helpers
# - Fix web server file permissions & ownership
alias perms="sudo chown -R _www:staff . && sudo chmod -R g+rw ."

# Optimization & Development
# - JS Lint
alias jslint="JSLintCli"
# - YUI Minify
alias minify="yuicompressor --verbose"
# - YUI Minify JS specifically to min.js
alias minifyjs="yuicompressor --verbose --type js -o '.js$:-min.js'"
# - YUI Minify CSS specifically to .min.css
alias minifycss="yuicompressor --verbose --type css -o '.css$:-min.css'"
# - Google Closure Compiler
alias clos="closure-compiler"
# - Simple Webserver (:80)
alias server='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
# - Grunt
alias grunt="nocorrect grunt"

# Net Ops / Dev Ops
# - Su root
alias root="sudo -i"
# - Current remote IP
#alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
# - Sniff port 80 over TCP
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
# - Copy RSA public key to clipboard
alias pub="more ~/.ssh/id_rsa.pub | pbcopy | echo 'public key copied to clipboard'"
# - Flush DNS Cache
alias flush="dscacheutil -flushcache"
# - Edit Apache vhosts
alias vhosts="mate /private/etc/apache2/extra/httpd-vhosts.conf"
# - Update Homebrew & Ports
alias update="echo Updating...; brew update; brew upgrade; sudo port selfupdate; sudo port upgrade outdated; sudo npm -g update; echo Done!"
# - Visual vhosts edit/add/remove
alias ghost="nocorrect ghost"

# Remote Boxes
# - Thor
alias thor="ssh root@69.55.55.139"
alias xthor="xargs -I % bash -c 'scp % root@69.55.55.139:%' <<<"
# - Forks
alias forks="ssh root@69.55.54.222"
# - Highline
alias highline="ssh root@highlineballroom.com"
# - Hertzberg.co
alias hertzberg="ssh root@hertzberg.co"

# Fun
alias wiki="xargs -I % bash -c 'dig +short txt %.wp.dg.cx' <<<"
alias cheat="nocorrect cheat"
alias up="/Users/mshertzberg/.scripts/Dropbox-Uploader/dropbox_uploader.sh"

# Apps
alias safari="open -a safari"
alias firefox="open -a firefox"
alias opera="open -a opera"
alias chrome="open -a google\ chrome"
alias canary="open -a google\ chrome\ canary"

# Currently Uncategorized
alias django="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/django-admin.py"
alias gitcoms="_gitcoms"
alias git="hub"

function iloveyou() {
echo ""
echo "       ..8888888..     ..8888888.."
echo "     .8:::::::::::8. .8:::::::::::8."
echo "   .8:::::::::::::::8:::::::::::::::8."
echo "  .8:::::::::::::::::::::::::::::::::8."
echo "  8:::::::::::::::::::::::::::::::::::8"
echo "  8:::::::::::::::::::::::::::::::::::8"
echo "  8:::::::::::::::::::::::::::::::::::8"
echo "  '8:::::::::::::::::::::::::::::::::8'"
echo "   '8:::::::::::::::::::::::::::::::8'"
echo "    '8:::::::::::::::::::::::::::::8'"
echo "      '8:::::::::::::::::::::::::8'"
echo "        '8:::::::::::::::::::::8'"
echo "          '8:::::::::::::::::8'  i love you"
echo "             '8:::::::::::8'"
echo "                '8:::::8'"
echo "                   '8'"
echo ""
}

function youreamazing() {
echo ""
echo "       ..8888888..     ..8888888.."
echo "     .8:::::::::::8. .8:::::::::::8."
echo "   .8:::::::::::::::8:::::::::::::::8."
echo "  .8:::::::::::::::::::::::::::::::::8."
echo "  8:::::::::::::::::::::::::::::::::::8"
echo "  8:::::::::::::::::::::::::::::::::::8"
echo "  8:::::::::::::::::::::::::::::::::::8"
echo "  '8:::::::::::::::::::::::::::::::::8'"
echo "   '8:::::::::::::::::::::::::::::::8'"
echo "    '8:::::::::::::::::::::::::::::8'"
echo "      '8:::::::::::::::::::::::::8'"
echo "        '8:::::::::::::::::::::8'"
echo "          '8:::::::::::::::::8'  you're amazing"
echo "             '8:::::::::::8'"
echo "                '8:::::8'"
echo "                   '8'"
echo ""
}

function submodule() {
	if [[ -z "$1" ]]; then
		echo "opts: submodule wordpress"
		return 0
	fi;
	
	if [[ "$1" == "jsonapi" ]]; then
		git submodule add git://github.com/plastic/WordPress-JSON-API.git $1
		return 0
	elif [[ "$1" == "wordpress" ]]; then
		git submodule add git://github.com/WordPress/WordPress.git $1
		return 0
	fi
}

function _gitcoms() {
	echo "
	git-changelog       changelog population
	git-commits-since   show commit logs since some date
	git-contrib         show a user's contribution
	git-count           show commit count
	git-effort          show effort statistics on file(s)
	git-fresh-branch    create fresh branches
	git-graft           merge and destroy a given branch
	git-ignore          add .gitignore patterns
	git-release         commit, tag and push changes to the repository
	git-setup           set up a git repository with initial commit
	git-repl            GIT read-eval-print-loop
	git-summary         repository summary & contrib
	git-touch           touch and add file to the index
	git-undo            undo one or more of the latest commits
	git-info            show information about the repository
	git flow init       Initialize a new git repo with support for the branching model.
	git flow feature    Manage your feature branches.
	git flow release    Manage your release branches.
	git flow hotfix     Manage your hotfix branches.
	git flow support    Manage your support branches.
	git flow version    Shows version information.
	";
}

function grab() {
	if [[ -z "$1" ]]; then
		echo "opts: <library>"
		return 0
	fi;
	
	DATA=$(curl -s http://cdnjs.com/index.html | grep '<td>//cdnjs.cloudflare.com/ajax/libs/' | sed 's/<td>//' | sed 's/<\/td>//' | sed 's/\/\///')

	echo $DATA | grep $1
}

function gz() {
	echo "orig size    (bytes): "
	cat "$1" | wc -c
	echo "gzipped size (bytes): "
	gzip -c "$1" | wc -c
}

function openurl(){
	if [ $2 ]
	then
	  url=$1"&host_ports=$2"
	fi
	open -a google\ chrome ${url}
}

function androidnexus(){
	local url="http://www.browserstack.com/start#os=android&os_version=4.0.3&device=Samsung+Galaxy+Nexus&zoom_to_fit=true&url=$1&start=true"
	openurl $url $2
}

function ipad3(){
	local url="http://www.browserstack.com/start#os=ios&os_version=5.1&device=iPad+3rd&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function ipad3ios6(){
	local url="http://www.browserstack.com/start#os=ios&os_version=6.1&device=iPad+3rd&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function ipad2(){
	local url="http://www.browserstack.com/start#os=ios&os_version=5.1&device=iPad+2nd&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7ie8(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=IE&browser_version=8.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7ie9(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=IE&browser_version=9.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win8ie10(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=8&browser=IE&browser_version=10.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function winxpie8(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=XP&browser=IE&browser_version=8.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function winxpie7(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=XP&browser=IE&browser_version=7.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function winxpie6(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=XP&browser=IE&browser_version=6.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7chrome(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=Chrome&browser_version=21.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

function win7ff(){
	local url="http://www.browserstack.com/start#os=Windows&os_version=7&browser=Firefox&browser_version=16.0&zoom_to_fit=true&resolution=1024x768&speed=1&url=$1&start=true"
	openurl $url $2
}

export RAPHAEL=''
export YEPNOPE=''
export JQUERY=''
export JQUERYUI=''
export SPINE=''
export BACKBONE=''
export UNDERSCORE=''
export WAYPOINTS=''
export SPINJS=''
export STOREJS=''
export ISOTOPE=''
export LAZYLOAD=''
export EMBER=''
export REQUIREJS=''
export NORMALIZE=''
export MOMENT=''
export ACCOUNTINGJS=''
export URLJS=''

alias raphael="bower install raphael"
alias yepnope="bower install yepnope"
alias jquery="bower install jquery"
alias jqueryui="bower install jquery-ui"
alias spine="bower install spine"
alias backbone="bower install backbone"
alias underscore="bower install underscore"
alias waypoints="bower install jquery-waypoints"
alias spinjs="bower install spin.js"
alias storejs="bower install store.js"
alias isotope="bower install isotope"
alias lazyload="bower install jquery.lazyload"
alias ember="bower install ember"
alias requirejs="bower install requirejs"
alias normalize="bower install normalize-css"
alias moment="bower install moment"
alias accountingjs="bower install accounting"
alias urljs="bower install URL.js"

export YUI3='3.3.0'
export CAMAN='3.2'
export EASING='1.3'
export SIMPLECART='3.0.5'
export TWITTERLIB='1.0.8'
export MORRIS='0.3.0'
export HEADJS='0.96'
export ANIMATE=''
export PAGETURN=''

alias simplecart="wget https://github.com/wojodesign/simplecart-js/raw/master/simpleCart.js"
alias twitterlib="wget http://cdnjs.cloudflare.com/ajax/libs/twitterlib.js/$TWITTERLIB/twitterlib.min.js"
alias historyjs="wget https://raw.github.com/balupton/history.js/master/scripts/bundled/html4+html5/jquery.history.js"
alias transit="wget http://cdnjs.cloudflare.com/ajax/libs/jquery.transit/$TRANSIT/jquery.transit.min.js"
alias pageturn="wget http://www.netmagazine.com/files/tutorials/demos/2012/06/create-a-page-turn-effect/demo/jquery.pageturn.js"
alias morris="wget https://raw.github.com/oesmith/morris.js/$MORRIS/morris.min.js"
alias headjs="wget https://raw.github.com/headjs/headjs/v$HEADJS/dist/head.js"
alias yui3="wget http://cdnjs.cloudflare.com/ajax/libs/yui/$YUI3/yui-min.js"
alias caman="wget http://cdnjs.cloudflare.com/ajax/libs/camanjs/$CAMAN/caman.full.min.js"
alias easing="wget http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/$EASING/jquery.easing.min.js"
alias animate="wget https://raw.github.com/daneden/animate.css/master/animate.css"

echo
#cat /users/mshertzberg/.motd
#echo ''
echo ' OPTIONS'
perl -e 'print " =", "—" x 63, "=\n"'
echo " =———————————>\tthor • forks • work • bk • pos • highline • root • hertzberg"
echo " doc\t\tCreate PHPDOC documentation for specified files"
echo " wp\t\tFetch and extract the latest version of WordPress"
echo " roots\t\tFetch the latest repo version of the Roots theme"
echo " ember\t\tFetch ember boilerplate"
echo " jqboiler\tFetch jQuery plugin boilerplate"
echo " bbb\t\tBackbone Boilerplate"
echo " jslint\t\tDouglas Crockford's JSLint"	
echo " minify(js|css)\tMinify JS and CSS files"
echo " pub\t\tSSH Public Key"
echo " =–––––––––––>\tGET HEAD POST PUT DELETE TRACE OPTIONS"
echo " =–––––––––––>\tBOWER:"
for i in `alias | grep bower | awk '{print $1}' | rev | cut -c8- | rev`; do
	echo "\t\t$i"
done

echo ''

source $ZSH/oh-my-zsh.sh