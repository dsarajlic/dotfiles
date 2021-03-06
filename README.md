# Damir Sarajlic's dotfiles

This is the configuration I use for my development laptop (a MacBook Pro). It’s a combination of borrowed config, settings, and miscellaneous setup stuff that I use all the time.

## What’s in here?

* .vimrc: vim look/feel
* .config/nvim/init.vim: neovim setup
* .zshrc: ZSH aliases and how to use them
* .gitconfig: toggle different profiles (primarily to note commits)
* .bash_profile: typically where I note my ENV variables
* .tmux.conf: tmux config file

Finally, I use install.sh as a way of quickly installing from the git repo. Effectively making me system agnostic.

### Neovim

You will need to install VimPlug, via the instructions on
https://github.com/junegunn/vim-plug#usage, followed by:
```
:PlugInstall
:UpdateRemotePlugins
```

### tmux

To install tpm you can do so via: `git clone https://github.com/tmux-plugins/tpm
~/.tmux/plugins/tpm`
If you have any issues please run `:CheckHealth`

### YouCompleteMe

Installing YCM is a pain to install, please ensure:
YCM won't work with the pre-installed Vim from Apple as its Python support is
broken. If you don't already use MacVim, install it with Homebrew. Install CMake
as well:
```
brew install cmake macvim
```
