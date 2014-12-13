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

function start() {
  populate_editorconfig
  populate_git
  touch .travis.yml
  touch .hound.yml
  #populate_ci
  touch .jshintrc
  #populate_lint
  npm init
  touch README.md
  touch CHANGELOG.md
  touch CONTRIBUTE.md
  populate_docs
  touch index.js
  mkdir test
  mkdir lib
  mkdir lib/helloworld.js
  mkdir build
  populate_lib
  mkdir docs
  tree
  echo ✔ DONE!
}

function populate_editorconfig() {
tee ./.editorconfig << EOF
# EditorConfig helps developers define and maintain consistent
# coding styles between different editors and IDEs
# editorconfig.org
root = true

[*]

# Change these settings to your own preference
indent_style = space
indent_size = 2

# We recommend you to keep these unchanged
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
EOF
}

function populate_git() {
tee ./.gitignore << EOF
RawBlameHistory   
# tmp files
lib-cov
*.seed
*.log
*.csv
*.dat
*.out
*.pid
*.gz

# tmp folders
pids/
logs/
results/
coverage/

# node.js
node_modules/
npm-debug.log

# osx
.DS_Store
EOF
tee ./.gitattributes << EOF

EOF
}

function populate_ci() {
tee ./.travis.yml << EOF
node_js:
- "0.10"
- "0.11"
language: node_js
script: "make test-travis"
after_script: "npm install coveralls@2 && cat ./coverage/lcov.info | coveralls"
EOF
}

function populate_packagejson() {
tee ./package.json << EOF

EOF
}

function populate_lint() {
tee ./.jshintrc << EOF
EOF
}

function populate_readme() {
tee ./README.md << EOF
# {{packageName}}
[![NPM version][npm-image]][npm-url]
[![build status][travis-image]][travis-url]
[![Test coverage][coveralls-image]][coveralls-url]
[![Downloads][downloads-image]][downloads-url]


## Installation
```bash
npm install {{packageName}}
```

## Usage
```js

```

## API
```js

```

## Why?


## See also
-
-

## License
[MIT](https://tldrlegal.com/license/mit-license)

[]


[npm-image]: https://img.shields.io/npm/v/{{packageName}}.svg?style=flat-square
[npm-url]: https://npmjs.org/package/{{packageName}}
[travis-image]: https://img.shields.io/travis/{{name}}/{{packageName}}.svg?style=flat-square
[travis-url]: https://travis-ci.org/{{name}}/{{packageName}}
[coveralls-image]: https://img.shields.io/coveralls/{{name}}/{{packageName}}.svg?style=flat-square
[coveralls-url]: https://coveralls.io/r/{{name}}/{{packageName}}?branch=master
[downloads-image]: http://img.shields.io/npm/dm/{{packageName}}.svg?style=flat-square
[downloads-url]: https://npmjs.org/package/{{packageName}}
[ghtag-image]: https://img.shields.io/github/tag/{{name}}/{{packageName}}.svg?style=flat-square
[ghtag-url]: 
[ghrel-image]: https://img.shields.io/github/release/{{name}}/{{packageName}}.svg?style=flat-square
[ghrel-url]:
[ghissues-image]: https://img.shields.io/github/issues/{{name}}/{{packageName}}.svg?style=flat-square
[ghissues-url]: 
[david-url]: https://img.shields.io/david/{{name}}/{{packageName}}.svg?style=flat-square
EOF
}

function populate_docs() {
  licensr
  populate_readme
}

function populate_lib() {
  mkdir lib/
  mkdir build/
  mkdir test/
  touch index.js
  touch lib/helloworld.js
tee ./index.js << EOF
"use strict";
module.exports = require('./lib/helloworld.js');
EOF
tee ./lib/helloworld.js << EOF
module.exports = function() {
  "use strict";
  console.log('hello world!');
}
EOF
}

function with_app() {

}

function with_webapp() {
  touch webpack.config.json
}
