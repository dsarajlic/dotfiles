# Damir Sarajlic's dotfiles

This is the configuration I use for my development laptop (a MacBook Pro). It’s a combination of borrowed config, settings, and miscellaneous setup stuff that I use all the time.

## What’s in here?

* .vimrc: vim look/feel
* .config/nvim/init.vim: neovim setup
* .zshrc: ZSH aliases and how to use them
* .gitconfig: toggle different profiles (primarily to note commits)
* .bash_profile: typically where I note my ENV variables
* .tmux.conf: tmux config file

Finally, I use apply-dotfiles.sh as a way of quickly sym linking from Google Drive to the computer I'm using. Effectively making me system agnostic.

### nvim
```
nvim
:PlugInstall
:UpdateRemotePlugins
```



### tmux

To install tpm you can do so via: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
