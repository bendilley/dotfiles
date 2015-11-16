```bash
cd ~
ln -s ~/workspace/dotfiles/.bashrc
ln -s ~/workspace/dotfiles/.bash_profile
# and put any system-specific settings in ~/.profile

cd ~/Library
ln -s ~/workspace/dotfiles/Library/KeyBindings
```

To fix Home and End keys in terminal:

1. Terminal > Preferences > Profiles > Keyboard
2. Add mappings for Home to 'Send text' of `\033OH` and End to `\033OF`
3. Add mappings for Page Up to `\033[5~` and Page Down to `\033[6~` - this helps with vim for example.

(courtesy of http://apple.stackexchange.com/a/16137/11680)
