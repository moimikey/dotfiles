function webserver() {
  local port="${1:-8888}"
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
    echo - Updating Casks...
    brew outdated | while read cask; do brew upgrade $cask; done
    echo — Updating Homebrew packages...
    brew upgrade --all
    echo — Cleaning up...
    brew cleanup
    echo - Pruning...
    brew prune
    echo - Updating Oh My ZSH...
    upgrade_oh_my_zsh
    echo - Updating RVM...
    rvm get stable
    echo - Updating Ruby Gems...
    rvm rubygems latest
    echo - Cleanup up RVM...
    rvm cleanup all
    echo - Running David...
    david --global
}

function nodeme() {
    npm -g install david
    npm -g install grunt-cli
    npm -g install bower
    npm -g install yo
    npm -g install webpack
    npm -g install vtop
    npm -g install licensr
    npm -g install coffee-script
    npm -g install mocha
    npm -g install redis-commander
    npm -g install gulp
    npm -g install browserify
    npm -g install boot2docker
    npm -g install heroku
    npm -g install uglifyjs
    npm -g install yuicompressor
}

function vagrantpress() {
    git clone git@github.com:chad-thompson/vagrantpress.git $1
    cd $1 || cd vagrantpress
}

function herokuwp() {
    git clone git@github.com:xyu/heroku-wp.git
    open https://github.com/xyu/heroku-wp#installation
}

function roots() {
    git clone https://github.com/roots/sage.git $1
}

function sage() {
    roots $1
}

function newmodule() {
    git clone git@github.com:sindresorhus/node-module-boilerplate.git $1
    cd $1
    git filter-branch --subdirectory-filter boilerplate
    rm -rf .git
    git init
}
