# ZSH
ZSH=$HOME/.oh-my-zsh
#ZSH_THEME='nanotech'
ZSH_THEME='nicoulaj'
COMPLETION_WAITING_DOTS=true
DISABLE_UPDATE_PROMPT=true
# plugins=(git-extras grunt urltools npm bower sync)
plugins=(bundler gitfast git-extras npm grunt caniuse)

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
