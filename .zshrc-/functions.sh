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
  type -P babel-node &>/dev/null && continue || npm -g install babel-cli
  type -P bower &>/dev/null && continue || npm -g install bower
  type -P browserify &>/dev/null && continue || npm -g install browserify
  type -P dploy &>/dev/null && continue || npm -g install dploy
  type -P fkill &>/dev/null && continue || npm -g install fkill-cli
  type -P greenkeeper &>/dev/null && continue || npm -g install greenkeeper
  type -P gulp &>/dev/null && continue || npm -g install gulp
  type -P heroku &>/dev/null && continue || npm -g install heroku
  type -P licensr &>/dev/null && continue || npm -g install licensr
  type -P ncu &>/dev/null && continue || npm -g install npm-check-updates
  type -P np &>/dev/null && continue || npm -g install np
  type -P speed-test &>/dev/null && continue || npm -g install speed-test
  type -P surger &>/dev/null && continue || npm -g install surger
  type -P vtop &>/dev/null && continue || npm -g install vtop
  type -P webpack &>/dev/null && continue || npm -g install webpack
  type -P is-satire &>/dev/null && continue || npm -g install is-satire
  type -P castnow &>/dev/null && continue || npm -g install castnow
  type -P kill-tabs &>/dev/null && continue || npm -g install kill-tabs
  type -P npmlv &>/dev/null && continue || npm -g install npmlv
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
#   export GITHUB_ACCESS_TOKEN=05x4ef5f61afa0a7882f043df24a01725d86e72a8

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
