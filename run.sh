#!/bin/sh

vimrcPath=$(realpath dotVimrc)
zshrcPath=$(realpath dotZshrc)
gitconfigPath=$(realpath dotGitConfig)
tmuxConfPath=$(realpath dotTmux.conf)

#vim:
rm ~/.vimrc; ln -s $vimrcPath ~/.vimrc

# zsh:
rm ~/.zshrc; ln -s $zshrcPath ~/.zshrc

#git:
rm ~/.gitconfig; ln -s $gitconfigPath ~/.gitconfig

#tmux:
rm ~/.tmux.conf; ln -s $tmuxConfPath ~/.tmux.conf
