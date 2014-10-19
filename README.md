dotfiles
========

i'm physically using this repo to store my actual dotfiles. if you're wondering how i'm avoiding more sensitive data from showing, here's my home directory's `.zshrc` file:

```
mshertzberg@forge ~DOTFILESPATH (master) $ cat ~/.zshrc
. ~/git/dotfiles/.zshrc.private
. ~/git/dotfiles/.zshrc
...
```

> __note__: the leading ellipsis is simply an ellipsis and not meant to be in your dotfiles :)

`.zshrc.private` contains my sensitive aliases, exports, younameit, which isnt exposed as `.gitignore` will ignore that file from being committed.
