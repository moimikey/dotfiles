# .dotfiles

# Install
```
npm --global config set save-prefix ""
npm --global config set progress false
npm --global config set init.version "0.1.0"
npm --global config set init.license "MIT"
npm --global config set init.author.email "mshertzberg@gmail.com"
npm --global config set init.author.name "Michael Scott Hertzberg"
npm --global config set init.author.url "https://hertzber.gs"
npm --global config set editor "vim"
git config --global user.name "Michael Scott Hertzberg"
git config --global user.email "mshertzberg@gmail.com"
git config --global --add remote.origin.fetch "+refs/pull/*/head:refs/remotes/origin/pr/*"
git config --global pager.diff "diff-so-fancy | less --tabs=1,5 -RFX"
git config --global pager.show "diff-so-fancy | less --tabs=1,5 -RFX"
```

# Optional
```
curl https://sh.rustup.rs -sSf | sh
```