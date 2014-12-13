# ZSH
plugins=''

if [ ! -d $ZSH_CUSTOM/plugins/hipchat ]; then
  HIPCHAT_API_TOKEN=""
  git clone git@github.com:robertzk/hipchat.zsh.git $ZSH_CUSTOM/plugins/hipchat
fi

if [ ! -d $ZSH_CUSTOM/plugins/caniuse ]; then
  git clone https://github.com/walesmd/caniuse.plugin.zsh $ZSH_CUSTOM/plugins/caniuse

fi

if [ ! -d $ZSH_CUSTOM/plugins/grunt ]; then
  git clone git@github.com:clauswitt/zsh-grunt-plugin.git $ZSH_CUSTOM/plugins/grunt
fi

if [ ! -d $ZSH_CUSTOM/plugins/git-extra-commands ]; then
  git clone https://github.com/unixorn/git-extra-commands.git $ZSH_CUSTOM/plugins/git-extra-commands
fi

if [ ! -d $ZSH_CUSTOM/plugins/alias-tips ]; then
  git clone https://github.com/djui/alias-tips.git $ZSH_CUSTOM/plugins/alias-tips
fi

ZSH=$HOME/.oh-my-zsh
#ZSH_THEME='nanotech'
ZSH_THEME='nicoulaj'
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true

plugins+=(bundler)
plugins+=(gitfast)
plugins+=(git-extras)
plugins+=(npm)
plugins+=(git-extra-commands)
plugins+=(grunt)
plugins+=(caniuse)
plugins+=(hipchat)
plugins+=(alias-tips)

EDITOR='subl -w'
ARCHFLAGS='-arch x86_64'

# git changelog [-l/--list] - populate changelog file with commits since the previous tag
# git contrib - display author contributions
# git count [--all] - count commits
# git delete-branch - delete local and remote branch
# git delete-submodule - delete submodule
# git delete-tag - delete local and remote tag
# git extras [-v/--version] - git-extras
# git graft - merge commits from source branch to destination branch
# git squash - merge commits from source branch into the current one as a single commit
# git feature [finish] - create a feature branch
# git refactor [finish] - create a refactor branch
# git bug [finish] - create a bug branch
# git summary - repository summary
# git effort [--above] - display effort statistics
# git repl - read-eval-print-loop
# git commits-since - list commits since a given date
# git release - release commit with the given tag
# git alias - define, search and show aliases
# git ignore - add patterns to .gitignore
# git info - show info about the repository
# git create-branch - create local and remote branch
# git fresh-branch - create empty local branch
# git undo - remove the latest commit
# git setup - setup a git repository
# git touch - one step creation of new files
# git obliterate - Completely remove a file from the repository, including past commits and tags
# git local-commits - list unpushed commits on the local branch
