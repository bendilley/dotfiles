```bash
cd ~
ln -s workspace/dotfiles/.bashrc
ln -s workspace/dotfiles/.bash_profile
ln -s workspace/dotfiles/.bash_aliases
# and put any system-specific settings in ~/.profile

ln -s workspace/dotfiles/.vim
ln -s workspace/dotfiles/.vimrc
ln -s workspace/dotfiles/.psqlrc
ln -s workspace/dotfiles/.abcde.conf
ln -s workspace/dotfiles/.flac2mp3.conf

ln -s workspace/dotfiles/.gitconfig-includes
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
git config --global include.path ~/.gitconfig-includes

cd ~/bin
ln -s ../workspace/dotfiles/bin/flac2mp3
ln -s ../workspace/dotfiles/bin/flac2mp3-rips-conversions

cd ~/Library
ln -s ../workspace/dotfiles/Library/KeyBindings

# after installing VS Code
cd "Library/Application Support/Code/User"
ln -s "$HOME/workspace/dotfiles/Library/Application Support/Code/User/settings.json"
ln -s "$HOME/workspace/dotfiles/Library/Application Support/Code/User/keybindings.json"
```

To fix Home and End keys in terminal:

1. Terminal > Preferences > Profiles > Keyboard
2. Add mappings for Home to 'Send text' of `\033OH` and End to `\033OF`
3. Add mappings for Page Up to `\033[5~` and Page Down to `\033[6~` - this helps with vim for example.

(courtesy of http://apple.stackexchange.com/a/16137/11680)


To enable dark mode for individual apps in macOS Mojave onwards:
```bash
defaults write com.sublimetext.3 NSRequiresAquaSystemAppearance 0
defaults write com.macromates.TextMate NSRequiresAquaSystemAppearance 0
defaults write org.whispersystems.signal-desktop NSRequiresAquaSystemAppearance 0
defaults write com.tinyspeck.slackmacgap NSRequiresAquaSystemAppearance 0
defaults write com.roon.Roon NSRequiresAquaSystemAppearance 0
defaults write com.coppertino.Vox NSRequiresAquaSystemAppearance 0
```
(you can use `osascript -e 'id of app "App Name"'` to identify an app)

Slack can be made dark using [this advice](https://superuser.com/a/1344566/66606):
Open `/Applications/Slack.app/Contents/Resources/app.asar.unpacked/src/static/ssb-interop.js`
and add this to the end:
```js
/* Slack Dark Theme */
document.addEventListener('DOMContentLoaded', function() {
 $.ajax({
   url: 'https://cdn.rawgit.com/laCour/slack-night-mode/master/css/raw/black.css',
   success: function(css) {
     $("<style></style>").appendTo('head').html(css);
   }
 });
});
```
