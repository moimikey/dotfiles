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
  echo brew update
  brew update
  echo brew outdated
  brew outdated | while read cask; do brew upgrade $cask; done
  echo brew upgrade
  brew upgrade --all
  echo brew cleanup
  brew cleanup
  echo brew prune
  brew prune
  echo upgrade_oh_my_zsh
  upgrade_oh_my_zsh
  echo rvm get stable
  rvm get stable
  echo rvm rubygems latest
  rvm rubygems latest
  echo rvm cleanup all
  rvm cleanup all
  echo ncu
  ncu -g
}

function nodeme() {
  (($+commands[babel-node])) || npm -g install babel-cli
  (($+commands[bower])) || npm -g install bower
  (($+commands[browserify])) || npm -g install browserify
  (($+commands[changelog])) || npm -g install changelog
  (($+commands[coffee])) || npm -g install coffee-script
  (($+commands[dploy])) || npm -g install dploy
  (($+commands[fkill])) || npm -g install fkill-cli
  (($+commands[greenkeeper])) || npm -g install greenkeeper
  (($+commands[grunt])) || npm -g install grunt-cli
  (($+commands[gulp])) || npm -g install gulp
  (($+commands[heroku])) || npm -g install heroku
  (($+commands[licensr])) || npm -g install licensr
  (($+commands[ncu])) || npm -g install npm-check-updates
  (($+commands[nodemon])) || npm -g install nodemon
  (($+commands[np])) || npm -g install np
  (($+commands[pianobar])) || npm -g install pianobar
  (($+commands[release])) || npm -g install release
  (($+commands[speed-test])) || npm -g install speed-test
  (($+commands[surger])) || npm -g install surger
  (($+commands[vtop])) || npm -g install vtop
  (($+commands[webpack])) || npm -g install webpack
  (($+commands[yo])) || npm -g install yo
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

# function np() {
#   export GITHUB_ACCESS_TOKEN=054ef5f61afa0a7882f043df24a01725d86e72a8

#   if test -n "$(git status --porcelain)"; then
#     echo 'Unclean working tree. Commit or stash changes first.' >&2;
#     exit 128;
#   fi

#   if ! git fetch --quiet 2>/dev/null; then
#     echo 'There was a problem fetching your branch.' >&2;
#     exit 128;
#   fi

#   if test "0" != "$(git rev-list --count --left-only @'{u}'...HEAD)"; then
#     echo 'Remote history differ. Please pull changes.' >&2;
#     exit 128;
#   fi

#   echo installing packages &&
#   npm install &&
#   echo versioning &&
#   npm version ${1:-patch} &&
#   # echo generating changelog &&
#   # conventional-changelog -i CHANGELOG.md -w &&
#   echo publishing to npm &&
#   npm publish &&
#   echo pushing new tag to github &&
#   git push --follow-tags
#   echo finished!
# }
