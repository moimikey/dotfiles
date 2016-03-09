# pull down Pull Requests
git config --global --add remote.origin.fetch "+refs/pull/*/head:refs/remotes/origin/pr/*"
git config --global pager.diff "diff-so-fancy | less --tabs=1,5 -RFX"
git config --global pager.show "diff-so-fancy | less --tabs=1,5 -RFX"
