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