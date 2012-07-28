ZSH=$HOME/.oh-my-zsh
ZSH_THEME="geoffgarside"

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias doc="docblockgen"
alias wp="wget http://wordpress.org/latest.tar.gz && tar xvzf latest.tar.gz && rm -rf latest.tar.gz && cd wordpress && mv * .. && cd .. && rm -rf wordpress"
alias roots="git clone git://github.com/retlehs/roots.git"
alias newest="svn up && sudo chown -R _www:staff . && sudo chmod -R g+rw ."
alias reload="source ~/.zshrc"
alias jslint="JSLintCli"
alias minify="yuicompressor --verbose"
alias minifyjs="yuicompressor --verbose --type js -o '.js:-min.js'"
alias minifycss="yuicompressor --verbose --type css -o '.css$:-min.js'"
alias thor="ssh root@69.55.55.139"
alias webshare='python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"'
alias root="sudo -i"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias pub="more ~/.ssh/id_rsa.pub | pbcopy | echo 'public key copied to clipboard'"
alias wiki="xargs -I % bash -c 'dig +short txt %.wp.dg.cx' <<<"
alias ghost="nocorrect ghost"
alias grunt="nocorrect grunt"
alias work="ssh mhertzberg@mhertzberg.ny.emusic.com"
alias bk="ssh mhertzberg@10.5.8.111"
alias pos="ssh mhertzberg@abv-pos-01.ny.emusic.com"
alias flush="dscacheutil -flushcache"
alias vhosts="mate /private/etc/apache2/extra/httpd-vhosts.conf"
alias update="echo Updating...; brew update; brew upgrade; sudo port selfupdate; sudo port upgrade outdated"

alias jquery="wget http://cdnjs.cloudflare.com/ajax/libs/jquery/1.7.2/jquery.min.js"
alias jqueryui="wget http://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.8.19/jquery-ui.min.js"
alias spine="wget http://cdnjs.cloudflare.com/ajax/libs/spinejs/0.0.4/spine.min.js"
alias backbone="wget http://cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.2/backbone-min.js"
alias underscore="wget http://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.3.3/underscore-min.js"
alias yui3="wget http://cdnjs.cloudflare.com/ajax/libs/yui/3.3.0/yui-min.js"
alias caman="wget http://cdnjs.cloudflare.com/ajax/libs/camanjs/3.1.1/caman.full.min.js"
alias easing="wget http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"
alias waypoints="wget http://cdnjs.cloudflare.com/ajax/libs/waypoints/1.1.6/waypoints.min.js"
alias simplecart="wget https://github.com/wojodesign/simplecart-js/raw/master/simpleCart.js"
alias getjs="wget https://github.com/m-r-r/GET.js/raw/master/build/GET.min.js"
alias spinjs="wget http://cdnjs.cloudflare.com/ajax/libs/spin.js/1.2.4/spin.min.js"
alias storejs="wget https://raw.github.com/marcuswestin/store.js/master/store+json2.min.js"
alias twitterlib="wget https://github.com/remy/twitterlib/raw/master/twitterlib.min.js"
alias isotope="wget https://github.com/desandro/isotope/raw/master/jquery.isotope.min.js"
alias fixie="wget https://raw.github.com/rthprog/fixie/master/fixie_min.js"
alias historyjs="wget https://raw.github.com/balupton/history.js/master/scripts/bundled/html4+html5/jquery.history.js"
alias transit="wget http://ricostacruz.com/jquery.transit/jquery.transit.min.js"
alias pageturn="wget http://www.netmagazine.com/files/tutorials/demos/2012/06/create-a-page-turn-effect/demo/jquery.pageturn.js"
alias lazyload="wget https://raw.github.com/tuupola/jquery_lazyload/master/jquery.lazyload.min.js"
alias ember="git clone git://github.com/emberjs/ember.js.git"
alias morris="wget https://raw.github.com/oesmith/morris.js/0.2.10/morris.min.js"

#CASE_SENSITIVE="true"
#DISABLE_AUTO_UPDATE="true"
#DISABLE_LS_COLORS="true"
#DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git brew macports osx textmate extract)

export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/Cellar/ruby/1.9.3-p194/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Users/mshertzberg/node_modules/.bin"
export NODE_PATH="$NODE_PATH:/usr/local/lib/node_modules"

echo ''
#cat /users/mshertzberg/.motd
#echo ''
echo ' OPTIONS'
perl -e 'print " ", "—" x 65,"\n"'
echo " root\t\tLogin to root"
echo " doc\t\tCreate PHPDOC documentation for specified files"
echo " wp\t\tFetch and extract the latest version of WordPress"
echo " roots\t\tFetch the latest repo version of the Roots theme"
echo " newest\t\tUpdate to latest subversion commits"
echo " jslint\t\tDouglas Crockford's JSLint"	
echo " minify(js|css)\tMinify JS and CSS files"
echo " webshare\tShare current directory to the world!"
echo " ip\t\tPublic IP"
echo " sniff\t\tSniff HTTP traffic"
echo " pub\t\tSSH Public Key"
echo " wiki\t\tWikipedia search"
echo " ghost\t\tEasy hosts Add/Remove/Edit"
echo " grunt\t\tJavaScript build tool"
echo " bbb\t\tBackbone build tool"
echo " vhosts\t\tEdit Apache virtual hosts"
echo " couchapp\tCouchApp"
echo " casperjs\tCasperJS"
echo " phantomjs\tPhantomJS"
echo " ------------->\tjquery jqueryui spine backbone underscore yui3 caman easing waypoints simplecart getjs spinjs storejs twitterlib isotope fixie historyjs transit pageturn lazyload ember morris"
echo " thor\t\tConnect to 'thor'"
echo " work\t\tConnect to 'eMusic'"
echo " bk\t\tConnect to 'bk'"
echo " pos\t\tConnect to 'pos-1'"

echo ''
echo " Ctrl + A\tGo to the beginning of the line you are currently typing on "
echo " Ctrl + E\tGo to the end of the line you are currently typing on "
echo " Ctrl + L\tClears the Screen, similar to the clear command "
echo " Ctrl + U\tClears the line before the cursor position. If you are at the end of the line, clears the entire line. "
echo " Ctrl + R\tLet’s you search through previously used commands "
echo " Ctrl + Z\tPuts whatever you are running into a suspended background process. fg restores it. "
echo " Ctrl + W\tDelete the word before the cursor "
echo " Ctrl + K\tClear the line after the cursor "
echo " Ctrl + T\tSwap the last two characters before the cursor "
echo " Esc  + T\tSwap the last two words before the cursor "
echo " Alt  + F\tMove cursor forward one word on the current line "
echo " Alt  + B\tMove cursor backward one word on the current line "
echo ''

source $ZSH/oh-my-zsh.sh