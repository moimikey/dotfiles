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
    brew upgrade
    echo — Cleaning up...
    brew cleanup
    echo - Pruning...
    brew prune
    echo - Updating Oh My ZSH...
    upgrade_oh_my_zsh
    echo — Updating NPM packages...
    david update --global
    echo - Updating RVM...
    rvm get stable
    echo - Updating Ruby Gems...
    rvm rubygems latest
    echo - Cleanup up RVM...
    rvm cleanup all
    echo .
    echo .
    echo .
    echo — Done
}

function nodeme() {
    npm -g install david
    npm -g install grunt-cli
    npm -g install bower
    npm -g install yo
    npm -g install jspm
    npm -g install webpack
    npm -g install vtop
    npm -g install licensr
    npm -g install coffee
    npm -g install mocha
    npm -g install browserify
}
