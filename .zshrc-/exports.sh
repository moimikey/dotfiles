# ZSH
plugins=''

ZSH=$HOME/.oh-my-zsh
# ZSH_THEME='dieter'
ZSH_THEME='nigga'
# ZSH_THEME='nicoulaj'
# ZSH_THEME='agnoster'
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true
HISTSIZE=99999999

if [ ! -d ~/.oh-my-zsh/custom/plugins/hipchat ]; then
  HIPCHAT_API_TOKEN=""
  git clone git@github.com:robertzk/hipchat.zsh.git ~/.oh-my-zsh/custom/plugins/hipchat
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/caniuse ]; then
  git clone https://github.com/walesmd/caniuse.plugin.zsh ~/.oh-my-zsh/custom/plugins/caniuse
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/grunt ]; then
  git clone git@github.com:clauswitt/zsh-grunt-plugin.git ~/.oh-my-zsh/custom/plugins/grunt
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/git-extra-commands ]; then
  git clone https://github.com/unixorn/git-extra-commands.git ~/.oh-my-zsh/custom/plugins/git-extra-commands
fi

if [ ! -d ~/.oh-my-zsh/custom/plugins/alias-tips ]; then
 git clone https://github.com/djui/alias-tips.git ~/.oh-my-zsh/custom/plugins/alias-tips
fi

plugins+=(alias-tips)
plugins+=(bundler)
plugins+=(caniuse)
plugins+=(git-extra-commands)
plugins+=(git-extras)
plugins+=(gitfast)
plugins+=(grunt)
# plugins+=(hipchat)
# plugins+=(npm)
plugins+=(nvm)

EDITOR='subl -w'
ARCHFLAGS='-arch x86_64'
